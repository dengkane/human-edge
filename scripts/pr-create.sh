#!/usr/bin/env bash
#
# Open (or find) a pull request using the GitHub REST API.
#
#   ./scripts/pr-create.sh --head draft/ch01-foo --title "Ch01: Foo"
#   ./scripts/pr-create.sh --head b --title "T" --body "text" --draft
#
# Why the REST API instead of `gh pr create`: gh is not reliably available or
# authenticated inside sandboxed/automated sessions, and it stores its token in
# $HOME which those sessions may not be able to read. A PAT in .secrets/ is
# readable wherever the repo is.
#
# The token is passed to curl through a private config file, never on the command
# line — arguments are visible to `ps`, config files are not.
#
# JSON handling uses python3, not jq: jq is absent on this machine and adding a
# hard dependency on a tool that may not be installed is how these scripts
# silently break. python3 is present on every box this repo runs on.
#
# Idempotent: if an open PR already exists for the branch, it reports that PR
# instead of failing. Safe to re-run after adding commits.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")"

head_branch=""
base_branch="main"
title=""
body=""
body_file=""
is_draft=false

usage() {
  sed -n '2,8p' "$0" | sed 's/^# \{0,1\}//'
  exit 2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --head)      head_branch="${2:-}"; shift 2 ;;
    --base)      base_branch="${2:-}"; shift 2 ;;
    --title)     title="${2:-}"; shift 2 ;;
    --body)      body="${2:-}"; shift 2 ;;
    --body-file) body_file="${2:-}"; shift 2 ;;
    --draft)     is_draft=true; shift ;;
    -h|--help)   usage ;;
    *) echo "Unknown option: $1" >&2; usage ;;
  esac
done

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }

[[ -n "$head_branch" ]] || { bad "--head <branch> is required"; exit 2; }
[[ -n "$title" ]]       || { bad "--title <text> is required";  exit 2; }
[[ -n "$body" ]] || { body="Automated PR from scripts/pr-create.sh."; }
if [[ -n "$body_file" ]]; then
  [[ -f "$body_file" ]] || { bad "no such --body-file: $body_file"; exit 1; }
  body="$(cat "$body_file")"
fi

command -v curl >/dev/null 2>&1 || { bad "curl is required but not installed"; exit 1; }
command -v python3 >/dev/null 2>&1 || { bad "python3 is required but not installed"; exit 1; }

# --- resolve repo slug ------------------------------------------------------
remote_url="$(git -C "$repo_root" remote get-url origin)"
slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$remote_url")"
[[ "$slug" == */* ]] || { bad "could not parse owner/repo from origin: $remote_url"; exit 1; }

# --- token ------------------------------------------------------------------
token="$("$repo_root/scripts/github-token.sh")"
owner="${slug%%/*}"

# --- private curl config (keeps the token out of argv) ----------------------
cfg="$(mktemp)"
chmod 600 "$cfg"
cleanup() { rm -f "$cfg" "${payload_file:-}"; }
trap cleanup EXIT

{
  printf 'header = "Authorization: Bearer %s"\n' "$token"
  printf 'header = "Accept: application/vnd.github+json"\n'
  printf 'header = "X-GitHub-Api-Version: 2022-11-28"\n'
  printf 'silent\nshow-error\n'
} > "$cfg"

api="https://api.github.com/repos/$slug"

# --- already open? ----------------------------------------------------------
info "checking for an existing PR on $head_branch"
existing="$(curl -K "$cfg" -G "$api/pulls" \
              --data-urlencode "head=$owner:$head_branch" \
              --data-urlencode "state=open" 2>/dev/null || echo '[]')"

existing_url="$(printf '%s' "$existing" | python3 -c '
import json, sys
try:
    data = json.load(sys.stdin)
except Exception:
    print("__PARSE_ERROR__")
    raise SystemExit
if isinstance(data, dict) and data.get("message"):
    print("__API_ERROR__" + str(data["message"]))
elif isinstance(data, list) and data:
    print(data[0]["html_url"])
else:
    print("")
' 2>/dev/null || echo "__PARSE_ERROR__")"

# A bad token makes the lookup return an error rather than an empty list. Without
# this check the script would read "rejected" as "no PR yet" and then fail
# confusingly on the create call.
if [[ "$existing_url" == __API_ERROR__* ]]; then
  bad "GitHub API error while looking up existing PRs: ${existing_url#__API_ERROR__}"
  echo
  echo "     The token was rejected. Check its scope (needs 'repo') and expiry:"
  echo "         ./scripts/github-token.sh --check"
  exit 1
fi
if [[ "$existing_url" == "__PARSE_ERROR__" ]]; then
  bad "could not parse the GitHub response while looking up existing PRs"
  echo "$existing" | head -5 | sed 's/^/     /'
  exit 1
fi

if [[ -n "$existing_url" ]]; then
  ok "PR already open: $existing_url"
  echo "$existing_url"
  exit 0
fi

# --- build payload ----------------------------------------------------------
# Values go through the environment so that quotes, emoji and newlines in the
# title/body cannot break out of the shell.
info "creating PR $head_branch → $base_branch"

payload_file="$(mktemp)"
chmod 600 "$payload_file"

TITLE="$title" HEAD_B="$head_branch" BASE_B="$base_branch" BODY="$body" DRAFT="$is_draft" \
python3 -c '
import json, os
payload = {
    "title": os.environ["TITLE"],
    "head":  os.environ["HEAD_B"],
    "base":  os.environ["BASE_B"],
    "body":  os.environ["BODY"],
    "draft": os.environ["DRAFT"] == "true",
}
print(json.dumps(payload))
' > "$payload_file"

# --- create -----------------------------------------------------------------
response="$(curl -K "$cfg" -X POST "$api/pulls" -d @"$payload_file" 2>&1)" || true

parsed="$(printf '%s' "$response" | python3 -c '
import json, sys
try:
    data = json.load(sys.stdin)
except Exception as exc:
    print("PARSE_ERROR\t" + str(exc))
    raise SystemExit
if not isinstance(data, dict):
    print("PARSE_ERROR\tunexpected response type")
    raise SystemExit
if data.get("message"):
    print("MESSAGE\t" + str(data["message"]))
    for err in (data.get("errors") or []):
        if isinstance(err, dict):
            print("DETAIL\t" + str(err.get("message") or (err.get("field", "") + " " + err.get("code", ""))))
elif data.get("html_url"):
    print("URL\t" + data["html_url"])
else:
    print("PARSE_ERROR\tno html_url and no message")
' 2>/dev/null || echo "PARSE_ERROR\tpython failed")"

kind="$(cut -f1 <<<"$parsed")"
value="$(cut -f2- <<<"$parsed")"

case "$kind" in
  URL)
    ok "PR created: $value"
    echo "$value"
    exit 0
    ;;
  MESSAGE)
    bad "GitHub API error: $value"
    # Surface the actionable part of validation errors.
    awk -F'\t' '$1=="DETAIL"{print "         " $2}' <<<"$parsed"
    echo
    echo "     Common causes:"
    echo "       - token lacks the 'repo' scope, or has expired"
    echo "       - the branch is not pushed yet"
    echo "       - a PR for this branch is already merged/closed"
    echo
    echo "     Verify the token with: ./scripts/github-token.sh --check"
    exit 1
    ;;
  *)
    bad "unexpected response from GitHub API:"
    echo "$response" | head -20 | sed 's/^/     /'
    exit 1
    ;;
esac
