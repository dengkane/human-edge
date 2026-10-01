#!/usr/bin/env bash
#
# Resolve a GitHub token for pushing and opening PRs.
#
#   ./scripts/github-token.sh          # print the token (for scripting)
#   ./scripts/github-token.sh --check  # report where the token came from, don't print it
#   ./scripts/github-token.sh --path   # print the expected file location
#
# Lookup order:
#   1. $GITHUB_TOKEN
#   2. $GH_TOKEN
#   3. .secrets/github-token            (gitignored)
#   4. `gh auth token`, if gh is installed and logged in
#
# The token needs, at minimum, the `repo` scope (classic PAT) or
# `Contents: read/write` + `Pull requests: read/write` (fine-grained PAT).
#
# Create one at https://github.com/settings/tokens

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "")"
token_file="${repo_root:+$repo_root/.secrets/github-token}"

mode="${1:-print}"

if [[ "$mode" == "--path" ]]; then
  echo "${token_file:-.secrets/github-token}"
  exit 0
fi

source_desc=""
token=""

if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  token="$GITHUB_TOKEN"; source_desc="\$GITHUB_TOKEN"
elif [[ -n "${GH_TOKEN:-}" ]]; then
  token="$GH_TOKEN"; source_desc="\$GH_TOKEN"
elif [[ -n "$token_file" && -s "$token_file" ]]; then
  token="$(tr -d '[:space:]' < "$token_file")"; source_desc=".secrets/github-token"
elif command -v gh >/dev/null 2>&1 && token="$(gh auth token 2>/dev/null)" && [[ -n "$token" ]]; then
  source_desc="gh auth token"
fi

if [[ "$mode" == "--check" ]]; then
  if [[ -n "$token" ]]; then
    printf '  \033[32m✓\033[0m token found via %s\n' "$source_desc"
    printf '  \033[36m·\033[0m length %d, prefix %s...\n' "${#token}" "${token:0:7}"
    [[ "$source_desc" == "gh auth token" ]] && \
      printf '  \033[33m!\033[0m this token is read from gh; it may not be readable in a sandbox session\n'
    exit 0
  fi
  printf '  \033[31m✗\033[0m no token found\n\n'
  echo "  Set one up with either:"
  echo "      echo '<your-pat>' > .secrets/github-token && chmod 600 .secrets/github-token"
  echo "  or export GITHUB_TOKEN=<your-pat>"
  echo
  echo "  Create a token at https://github.com/settings/tokens (scope: repo)"
  exit 1
fi

[[ -n "$token" ]] || {
  echo "No GitHub token found. See: ./scripts/github-token.sh --check" >&2
  exit 1
}

printf '%s' "$token"
