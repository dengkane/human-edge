#!/usr/bin/env bash
#
# Ship one chapter: branch → commit → push → pull request.
#
#   ./scripts/publish-chapter.sh chapters/en/ch01-<slug>.md
#   ./scripts/publish-chapter.sh --type revise chapters/en/ch01-<slug>.md
#   ./scripts/publish-chapter.sh --dry-run chapters/en/ch01-<slug>.md
#   ./scripts/publish-chapter.sh --no-pr chapters/en/ch01-<slug>.md    # push only
#
# One chapter per branch per PR (see CONTRIBUTING.md). The branch is created from
# main the first time and reused on later runs, so re-running pushes revisions to
# the same PR instead of opening a second one.
#
# Credentials are split by job: `git push` uses SSH (core.sshCommand), and opening
# the pull request uses the GitHub token. See scripts/doctor.sh.
#
# This script never force-pushes and never commits to main.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

commit_type=""
dry_run=false
open_pr=true
file=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --type)   commit_type="${2:-}"; shift 2 ;;
    --dry-run) dry_run=true; shift ;;
    --no-pr)  open_pr=false; shift ;;
    -h|--help) sed -n '2,20p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*) echo "Unknown option: $1" >&2; exit 2 ;;
    *) file="$1"; shift ;;
  esac
done

[[ -n "$file" ]] || { echo "Usage: scripts/publish-chapter.sh [--type T] [--dry-run] [--no-pr] <chapter.md>" >&2; exit 2; }

step() { printf '\n\033[1m%s\033[0m\n' "$1"; }
ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }

# --- 0. resolve the branch before touching the file --------------------------
# The chapter may already be committed on its draft branch, in which case it does
# not exist in the working tree while you are on main. Deriving the branch name
# from the argument and switching first makes both cases work.
#
# The branch is namespaced by language, because the English and Chinese files for
# a chapter have the *same* filename by design (ch01-the-mirror.md in both
# chapters/en/ and chapters/zh/). Without the language segment, publishing the
# translation while the English PR is still open would check out the English
# branch and commit the Chinese file into that PR.
stem="$(basename "$file" .md)"
chapter_tag="${stem%%-*}"          # ch01

# Derive the language from the path: .../en/... or .../zh/...
lang=""
case "$file" in
  */en/*|en/*) lang="en" ;;
  */zh/*|zh/*) lang="zh" ;;
esac
if [[ -z "$lang" ]]; then
  echo "publish-chapter.sh: cannot tell the language from '$file'" >&2
  echo "                   expected a path containing /en/ or /zh/" >&2
  exit 2
fi

branch="draft/${lang}/${stem}"

current="$(git rev-parse --abbrev-ref HEAD)"
step "1. Branch"
if [[ "$current" == "$branch" ]]; then
  ok "already on $branch"
elif [[ "$current" == "main" || "$current" == "master" ]]; then
  if git show-ref --verify --quiet "refs/heads/$branch"; then
    if $dry_run; then
      info "[dry-run] would switch to existing branch $branch"
    else
      git checkout "$branch"
      ok "switched to existing branch $branch"
    fi
  elif [[ ! -f "$file" ]]; then
    # Don't create a branch for a chapter that would not be on it.
    bad "$file does not exist, and neither does $branch"
    echo
    echo "    Start the chapter first:"
    echo "        cp templates/chapter-template.md $file"
    exit 1
  else
    if $dry_run; then
      info "[dry-run] git checkout -b $branch   (from $current)"
    else
      git checkout -b "$branch"
      ok "created $branch from $current"
    fi
  fi
else
  bad "currently on '$current', which is neither main nor $branch"
  echo
  echo "    Finish or stash that branch first. This script will not move you"
  echo "    off a branch you did not create with it."
  exit 1
fi

# On the branch that owns it, the file must exist.
#
# In dry-run we deliberately do not switch branches, so the chapter may live in
# the branch's tree but not in the current worktree. Materialise a temp copy that
# keeps the original filename (check-chapter.sh validates the name), and lint that.
lint_target="$file"
tmp_dir=""
if [[ ! -f "$file" ]]; then
  if $dry_run && git cat-file -e "$branch:$file" 2>/dev/null; then
    tmp_dir="$(mktemp -d)"
    lint_target="$tmp_dir/$(basename "$file")"
    git show "$branch:$file" > "$lint_target"
    info "[dry-run] $file is committed on $branch — checking that copy"
  else
    bad "no such file on $branch: $file"
    echo
    echo "    Create it first:"
    echo "        cp templates/chapter-template.md $file"
    exit 1
  fi
fi
[[ -z "$tmp_dir" ]] || trap 'rm -rf "$tmp_dir"' EXIT

# --- 1. lint ----------------------------------------------------------------
step "2. Lint"
if "$repo_root/scripts/check-chapter.sh" "$lint_target"; then
  ok "chapter passes checks"
else
  bad "chapter failed checks — fix the errors above before publishing"
  echo
  echo "    Re-run with: ./scripts/check-chapter.sh $file"
  exit 1
fi

# --- 2. derive names --------------------------------------------------------
# Read front matter from $lint_target: in dry-run the real file may only exist on
# the branch, which is why the copy was made above.
#
# The title is stripped of its YAML quoting in two steps: the surrounding quotes,
# then any backslash-escaped quotes inside it. Chapter titles in this book contain
# quoted words ("Pseudo-Skills"), and without the second step the escape leaks into
# the commit subject and the PR title as a literal backslash.
title="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{exit} inside && /^title:/{sub(/^title: */,"");gsub(/^"|"$/,"");gsub(/\\"/,"\"");print;exit}' "$lint_target")"
[[ -n "$title" ]] || title="$stem"

status="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{exit} inside && /^status:/{sub(/^status: */,"");gsub(/^"|"$/,"");print;exit}' "$lint_target")"
[[ -n "$status" ]] || status="draft"

if git ls-files --error-unmatch "$file" >/dev/null 2>&1; then
  default_type="revise"
else
  default_type="draft"
fi
commit_type="${commit_type:-$default_type}"

# The PR title and the commit subject are the same string on purpose. They used to
# differ — the commit got 'draft(ch02): <title>' while the PR was opened with the
# bare '<title>' — which made the PR list and the history read differently for the
# same change. GitHub's squash merge takes its subject from the commit, so naming
# the PR after the commit also means the title you read in the PR matches the one
# that lands on main.
pr_title="${commit_type}(${chapter_tag}): ${title}"

# --- CHANGELOG consistency ---------------------------------------------------
# WORKFLOW.md requires the chapter, the index, and the changelog to agree before a
# chapter ships. The index is staged automatically; the changelog is not, because
# its wording is a judgement call. Warn rather than fail — a typo fix in an
# existing chapter legitimately needs no changelog entry.
if [[ "$default_type" == "draft" ]] && git diff --quiet -- CHANGELOG.md 2>/dev/null; then
  info "note: CHANGELOG.md has no changes staged for this new chapter"
  info "      WORKFLOW.md asks for an entry describing it (see the '[Unreleased]' section)"
fi

remote_url="$(git remote get-url origin)"
slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$remote_url")"

step "3. Plan"
info "file    : $file"
info "branch  : $branch"
info "commit  : ${commit_type}(${chapter_tag}): ${title}"
info "repo    : $slug"

# --- 4. stage and commit ----------------------------------------------------
step "4. Stage and commit"

# A chapter is not shipped until four things agree with it: the chapter index, the
# changelog, its research notes, and the research index (see WORKFLOW.md step 1 and
# "Updating the index and changelog"). Those edits have to travel in the same commit
# as the chapter — staging only $file would silently leave them behind.
#
# The notes file is usually brand new, so it is untracked: `git diff` reports
# nothing for it. `git status --porcelain` covers both modified and untracked.
notes_rel="$(dirname "$file")/research/${chapter_tag}-notes.md"
tracked_extras=()
for extra in chapters/en/README.md CHANGELOG.md chapters/en/research/README.md "$notes_rel"; do
  if [[ -f "$extra" ]] && [[ -n "$(git status --porcelain -- "$extra" 2>/dev/null)" ]]; then
    tracked_extras+=("$extra")
  fi
done

if $dry_run; then
  info "[dry-run] git add $file ${tracked_extras[*]:-(nothing else modified)}"
else
  git add "$file"
  # Guarded because "${arr[@]}" on an empty array trips `set -u` on older bash,
  # and "${arr[@]:-}" would pass a literal empty string to git add.
  [[ ${#tracked_extras[@]} -gt 0 ]] && git add "${tracked_extras[@]}"

  if ! git diff --cached --quiet; then
    git commit -q -m "${commit_type}(${chapter_tag}): ${title}"
    ok "committed: ${commit_type}(${chapter_tag}): ${title}"
    [[ ${#tracked_extras[@]} -gt 0 ]] && info "included: ${tracked_extras[*]}"
  else
    info "nothing staged for $file — already committed?"
  fi

  # Anything else the author edited stays unstaged on purpose: guessing which
  # unrelated files belong in a chapter's PR is how stray changes get shipped.
  if ! git diff --quiet || [[ -n "$(git ls-files --others --exclude-standard)" ]]; then
    info "other uncommitted changes were left alone:"
    git status --short | grep -vE "^ M (chapters/en/README\.md|CHANGELOG\.md)$" | head -5 | sed 's/^/       /'
  fi
fi

# --- 5. push ----------------------------------------------------------------
step "5. Push"

# Push always goes over the configured remote (SSH). Only PR creation uses the
# token — keeping the two separate means a token with a narrow scope still can't
# be used to rewrite history, and a broken token can't block a push.
if $dry_run; then
  info "[dry-run] git push -u origin $branch"
else
  info "transport: configured remote ($(sed -E 's#^(git@|https://).*#\1...#; s#:$##' <<<"$remote_url"))"
  if ! push_out="$(git push -u origin "$branch" 2>&1)"; then
    echo "$push_out" | sed 's/^/     /'
    echo
    bad "push failed — branch and commit are still here locally, nothing is lost."
    echo
    if grep -q "Permission denied (publickey)" <<<"$push_out"; then
      echo "     SSH key not accepted. Check your setup:"
      echo "         ssh -T git@github.com"
    elif grep -q "Bad owner or permissions" <<<"$push_out"; then
      echo "     ssh refuses to read its system config (unrelated to your key). Fix:"
      echo "         sudo chown root:root /etc/ssh/ssh_config.d /usr/lib/systemd/ssh_config.d"
    fi
    exit 1
  fi
  ok "pushed $branch"
fi

# --- 6. pull request --------------------------------------------------------
step "6. Pull request"
pr_url="https://github.com/${slug}/compare/main...${branch}?expand=1"

if ! $open_pr; then
  info "--no-pr given; open it yourself at:"
  echo "  $pr_url"
  exit 0
fi

pr_body="Draft for **${chapter_tag}** — _${title}_.

| | |
|---|---|
| Chapter | \`${chapter_tag}\` |
| Source | \`${file}\` |
| Status | \`${status}\` |
| Part | see front matter |

Opened by \`scripts/publish-chapter.sh\`.

🤖 Generated with AI assistance — see the disclosure footer in the chapter."

if $dry_run; then
  if "$repo_root/scripts/github-token.sh" >/dev/null 2>&1; then
    info "[dry-run] ./scripts/pr-create.sh --head $branch --title \"$pr_title\" --draft"
  else
    info "[dry-run] no token — PR would be skipped, only the branch is pushed"
  fi
  echo
  echo "  $pr_url"
elif ! "$repo_root/scripts/github-token.sh" >/dev/null 2>&1; then
  info "no token found, so the PR cannot be opened automatically. Open it here:"
  echo "  $pr_url"
  echo
  echo "      To automate this: echo '<your-pat>' > .secrets/github-token"
elif "$repo_root/scripts/pr-create.sh" \
       --head "$branch" --base main --title "$pr_title" \
       --body "$pr_body" --draft | tail -1 | grep -q '^https'; then
  ok "pull request ready"
else
  info "could not open the PR automatically — open it here:"
  echo "  $pr_url"
fi

# --- 7. next ----------------------------------------------------------------
if ! $dry_run; then
  step "Next"
  echo "  After merging, return to a clean main:"
  echo "      git checkout main && git pull && git branch -d $branch"
fi
