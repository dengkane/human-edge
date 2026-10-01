#!/usr/bin/env bash
#
# Merge a pull request, then clean up the branch.
#
#   ./scripts/pr-merge.sh draft/ch02-some-slug
#   ./scripts/pr-merge.sh draft/ch02-some-slug --method squash
#   ./scripts/pr-merge.sh draft/ch02-some-slug --dry-run
#
# Handles the two things the GitHub API will not do for you:
#
#   * a draft PR cannot be merged (HTTP 405 "Pull Request is still a draft"), and
#     there is no REST endpoint to un-draft it — it needs a GraphQL mutation;
#   * the head branch is not deleted automatically unless you ask.
#
# This is a single-author repo, so the flow is: publish-chapter.sh opens a draft
# PR, you read the diff, then this merges it once it reads right.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")"
cd "$repo_root"

branch=""
method="squash"
dry_run=false
keep_branch=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --method)      method="${2:-}"; shift 2 ;;
    --keep-branch) keep_branch=true; shift ;;
    --dry-run)     dry_run=true; shift ;;
    -h|--help)     sed -n '2,10p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*) echo "Unknown option: $1" >&2; exit 2 ;;
    *) branch="$1"; shift ;;
  esac
done

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }

[[ -n "$branch" ]] || { bad "usage: scripts/pr-merge.sh <branch> [--method squash|merge|rebase]"; exit 2; }
case "$method" in squash|merge|rebase) ;; *) bad "unknown method: $method"; exit 2 ;; esac

command -v python3 >/dev/null 2>&1 || { bad "python3 is required"; exit 1; }

remote_url="$(git remote get-url origin)"
slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$remote_url")"
api="https://api.github.com/repos/$slug"
owner="${slug%%/*}"
token="$(./scripts/github-token.sh)"

cfg="$(mktemp)"; chmod 600 "$cfg"
trap 'rm -f "$cfg"' EXIT
{
  printf 'header = "Authorization: Bearer %s"\n' "$token"
  printf 'header = "Accept: application/vnd.github+json"\n'
  printf 'header = "X-GitHub-Api-Version: 2022-11-28"\n'
  printf 'silent\nshow-error\n'
} > "$cfg"

api_get()  { curl -K "$cfg" --max-time 30 "$@"; }
api_send() { curl -K "$cfg" --max-time 45 "$@"; }

# --- find the PR ------------------------------------------------------------
info "looking up the PR for $branch"
pr_json="$(api_get -G "$api/pulls" --data-urlencode "head=$owner:$branch" --data-urlencode "state=open")"

read -r pr_num pr_draft <<<"$(printf '%s' "$pr_json" | python3 -c '
import json, sys
try:
    data = json.load(sys.stdin)
except Exception:
    print("0 False"); raise SystemExit
if isinstance(data, dict) and data.get("message"):
    print("0 False"); raise SystemExit
if isinstance(data, list) and data:
    print(data[0]["number"], data[0]["draft"])
else:
    print("0 False")
')"

if [[ "$pr_num" == "0" ]]; then
  bad "no open PR found for branch '$branch'"
  echo "     Check the branch name, or open the PR first:"
  echo "         ./scripts/publish-chapter.sh <chapter.md>"
  exit 1
fi
ok "PR #$pr_num (draft=$pr_draft)"

# --- un-draft ---------------------------------------------------------------
# A draft PR cannot be merged. There is no REST endpoint for this, so it needs
# GraphQL. Skip entirely when the PR is already ready.
if [[ "$pr_draft" == "True" ]]; then
  info "PR is a draft — marking it ready for review"
  if $dry_run; then
    info "[dry-run] markPullRequestReadyForReview(PR #$pr_num)"
  else
    node_id="$(api_get "$api/pulls/$pr_num" | python3 -c '
import json, sys
print(json.load(sys.stdin).get("node_id", ""))
')"
    [[ -n "$node_id" ]] || { bad "could not read the PR node id"; exit 1; }

    gql="$(mktemp)"; chmod 600 "$gql"
    python3 - "$node_id" > "$gql" <<'PY'
import json, sys
query = ('mutation($id: ID!) { markPullRequestReadyForReview(input: {pullRequestId: $id})'
         ' { pullRequest { number isDraft } } }')
print(json.dumps({"query": query, "variables": {"id": sys.argv[1]}}))
PY
    resp="$(api_send -X POST https://api.github.com/graphql \
              -H "Content-Type: application/json" -d @"$gql")"
    rm -f "$gql"

    if grep -q '"errors"' <<<"$resp"; then
      bad "could not mark the PR ready:"
      python3 -c 'import json,sys; d=json.load(sys.stdin); print("     " + "; ".join(e.get("message","?") for e in d.get("errors",[])))' <<<"$resp" || true
      exit 1
    fi
    ok "marked ready for review"
  fi
fi

# --- mergeable? -------------------------------------------------------------
# GitHub computes this asynchronously; it is routinely `unknown` on first ask.
if ! $dry_run; then
  state=""
  for _ in 1 2 3 4 5; do
    state="$(api_get "$api/pulls/$pr_num" | python3 -c '
import json, sys
d = json.load(sys.stdin)
print(str(d.get("mergeable")) + " " + str(d.get("mergeable_state")))
')"
    [[ "$state" != "None unknown" && "$state" != "None "* ]] && break
    info "waiting for GitHub to compute mergeability..."
    sleep 3
  done
  ok "mergeable: $state"

  case "$state" in
    True\ clean|True\ unstable|True\ has_hooks) ;;
    True\ *)  info "note: mergeable_state is '${state#True }'" ;;
    False\ *) bad "the PR has conflicts — resolve them before merging"
              exit 1 ;;
  esac
fi

# --- merge ------------------------------------------------------------------
info "merging with --$method"
if $dry_run; then
  info "[dry-run] PUT /pulls/$pr_num/merge {merge_method: $method}"
  exit 0
fi

payload="$(mktemp)"; chmod 600 "$payload"
python3 - "$method" > "$payload" <<'PY'
import json, sys
print(json.dumps({"merge_method": sys.argv[1]}))
PY

code="$(curl -K "$cfg" --max-time 45 -o /tmp/pr-merge-out.$$ -w '%{http_code}' \
  -X PUT "$api/pulls/$pr_num/merge" -d @"$payload")"
rm -f "$payload"

if [[ "$code" != "200" ]]; then
  bad "merge failed (HTTP $code):"
  python3 -c 'import json,sys; d=json.load(sys.stdin); print("     " + str(d.get("message")))' \
    < /tmp/pr-merge-out.$$ 2>/dev/null || head -3 /tmp/pr-merge-out.$$ | sed 's/^/     /'
  rm -f /tmp/pr-merge-out.$$
  exit 1
fi
rm -f /tmp/pr-merge-out.$$
ok "merged PR #$pr_num"

# --- clean up ---------------------------------------------------------------
info "cleaning up local state"
git checkout -q main

# Get local main onto the merge commit the server just created.
#
# A plain `git pull --ff-only` is not enough. The branch was usually cut from
# main *before* other commits landed, and the squash replays the branch's whole
# content as a single new commit — so when main has any local-only commit, the
# merge commit is not a descendant of local main and the fast-forward fails,
# leaving the two histories diverged. That is the common case, not an edge case:
# a chapter branch is often created from an unpushed maintenance commit.
#
# The safe order is: fetch, try fast-forward, and if that fails accept the
# server's version *only after proving nothing local would be lost*. Dumping
# local commits silently is how work disappears, so this refuses loudly instead.
git fetch -q origin main
if git merge-base --is-ancestor main origin/main; then
  git merge --ff-only -q origin/main
  ok "main fast-forwarded to $(git rev-parse --short main)"
elif git diff --quiet main origin/main; then
  # Histories diverged but trees are identical: the local-only commits were
  # already squashed into the remote commit. Repointing loses no content.
  git reset --hard -q origin/main
  ok "main repointed to $(git rev-parse --short main) (content was identical)"
else
  info "local main and origin/main have diverged, and their contents differ."
  info "left as-is; resolve by hand:"
  echo "     git log --oneline --left-right main...origin/main"
  echo "     git diff main origin/main"
fi

if $keep_branch; then
  info "--keep-branch given; local branch $branch retained"
else
  if git show-ref --verify --quiet "refs/heads/$branch"; then
    git branch -D "$branch" >/dev/null
    ok "deleted local branch $branch"
  fi
  # The remote branch is normally auto-deleted by GitHub on merge; make sure.
  if git ls-remote --exit-code --heads origin "$branch" >/dev/null 2>&1; then
    git push -q origin --delete "$branch" 2>/dev/null && ok "deleted remote branch $branch" \
      || info "remote branch $branch still exists (could not delete)"
  fi
fi

echo
ok "main is now at $(git rev-parse --short HEAD)"
