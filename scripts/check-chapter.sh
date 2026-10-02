#!/usr/bin/env bash
#
# Lint a chapter file before it goes into a PR.
#
#   ./scripts/check-chapter.sh chapters/en/ch01-<slug>.md
#
# Checks the things a reader will notice and a reviewer will complain about:
# filename convention, front matter, disclosure footer, leftover template
# scaffolding, unresolved placeholders. Exits non-zero if anything is an ERROR.
#
# WARN-level findings do not fail the run — they are judgement calls.

set -euo pipefail

usage() {
  echo "Usage: scripts/check-chapter.sh <chapter.md>"
  echo
  echo "Example: scripts/check-chapter.sh chapters/en/ch01-<slug>.md"
  exit 2
}

[[ $# -eq 1 ]] || usage
file="$1"

errors=0
warns=0

err()  { printf '  \033[31mERROR\033[0m  %s\n' "$1"; errors=$((errors + 1)); }
warn() { printf '  \033[33mWARN \033[0m  %s\n' "$1"; warns=$((warns + 1)); }
pass() { printf '  \033[32mOK\033[0m     %s\n' "$1"; }

if [[ ! -f "$file" ]]; then
  echo "No such file: $file" >&2
  exit 1
fi

echo "Checking $file"
echo

# --- filename ---------------------------------------------------------------
base="$(basename "$file")"
if [[ "$base" =~ ^ch([0-9]{2})-[a-z0-9]+(-[a-z0-9]+)*\.md$ ]]; then
  chapter_num="${BASH_REMATCH[1]}"
  pass "filename matches ch<NN>-<slug>.md (chapter $chapter_num)"
else
  err "filename must be ch<NN>-<kebab-case-slug>.md — got '$base'"
  chapter_num=""
fi

# --- front matter -----------------------------------------------------------
fm="$(awk 'NR==1 && $0=="---"{inside=1; next} inside && $0=="---"{exit} inside{print}' "$file")"

if [[ -z "$fm" ]]; then
  err "no YAML front matter (file must start with a '---' block)"
else
  pass "front matter block present"
  for field in chapter title part status language created last_updated assisted_by edited_by; do
    if grep -qE "^${field}:" <<<"$fm"; then
      pass "front matter: $field"
    else
      err "front matter missing field: $field"
    fi
  done

  fm_chapter="$(grep -E '^chapter:' <<<"$fm" | head -1 | sed 's/^chapter: *//; s/"//g')"
  if [[ -n "$chapter_num" && "$fm_chapter" =~ ^[0-9]+$ ]]; then
    if [[ "$((10#$fm_chapter))" -ne "$((10#$chapter_num))" ]]; then
      err "chapter number mismatch: filename says $chapter_num, front matter says $fm_chapter"
    fi
  fi

  fm_status="$(grep -E '^status:' <<<"$fm" | head -1 | sed 's/^status: *//; s/"//g' | tr -d ' ')"
  if [[ -n "$fm_status" ]]; then
    case "$fm_status" in
      planned|draft|review|stable) pass "status '$fm_status' is valid" ;;
      *) err "status must be planned|draft|review|stable — got '$fm_status'" ;;
    esac
  fi
fi

# --- title heading ----------------------------------------------------------
if grep -qE '^# [0-9]{2}\. .+' "$file"; then
  pass "numbered H1 title present"
else
  warn "no '# <NN>. Title' H1 heading found"
fi

# --- disclosure footer (required — matches README.md) ------------------------
echo
for marker in '📅 Last updated:' '🤖 Assisted by:' '✍️  Edited by:' '⚠️'; do
  if grep -qF "$marker" "$file"; then
    pass "footer: $marker"
  else
    err "missing disclosure footer marker: $marker"
  fi
done

# --- template scaffolding / placeholders -------------------------------------
echo
# 'verified'/'unverified' markers are legitimate content, not leftover scaffolding.
if grep '<!--' "$file" | grep -qvE '<!--[[:space:]]*(verified|unverified)'; then
  warn "HTML comments still present — template scaffolding or author notes left in?"
  grep -n '<!--' "$file" | grep -vE '<!--[[:space:]]*(verified|unverified)' | head -5 | sed 's/^/         /'
fi

if grep -qiE '\b(TODO|TBD|FIXME|LOREM IPSUM|XXX)\b' "$file"; then
  err "unresolved placeholder marker found:"
  grep -niE '\b(TODO|TBD|FIXME|LOREM IPSUM|XXX)\b' "$file" | head -5 | sed 's/^/         /'
fi

# --- factual claims and sources ---------------------------------------------
# Strict rule: a concrete, checkable claim (an amount, a percentage, a dated
# event) must be traceable to a source. See chapters/en/README.md#factual-claims.
#
#   <!-- verified YYYY-MM-DD — source: URL -->
#   <!-- unverified -->
#
# 'verified' means someone actually opened the source. It must never be used to
# mean "this sounds right" — a marker that overstates confidence is worse than
# no marker, because it tells the reader a check happened when it did not.
echo
verified_n=$(grep -cE '<!--[[:space:]]*verified[[:space:]]+[0-9]{4}-[0-9]{2}-[0-9]{2}' "$file" || true)
unverified_n=$(grep -cE '<!--[[:space:]]*unverified' "$file" || true)

# 1. A 'verified' marker without a source is a claim of diligence with no evidence.
nosrc="$(grep -nE '<!--[[:space:]]*verified' "$file" | grep -v 'source:' || true)"
if [[ -n "$nosrc" ]]; then
  err "'verified' marker has no source — add '— source: <URL>' or downgrade it:"
  sed 's/^/         /' <<<"$nosrc"
elif [[ "$verified_n" -gt 0 ]]; then
  pass "$verified_n verified claim(s), each with a source"
fi

# 2. Unverified claims block promotion out of draft.
status_now="${fm_status:-}"
if [[ "$unverified_n" -gt 0 ]]; then
  if [[ "$status_now" == "review" || "$status_now" == "stable" ]]; then
    err "$unverified_n unverified claim(s) remain, but status is '$status_now' — every claim needs a source"
  else
    warn "$unverified_n claim(s) marked unverified — expected in draft, must be resolved before 'review'"
  fi
fi

# 3. Figures with no marker anywhere in the file: likely unsourced claims.
# Heuristic only. It cannot see a year range or a named ranking, so a clean
# result here is not proof that every claim is sourced.
if [[ "$verified_n" -eq 0 && "$unverified_n" -eq 0 ]]; then
  figures="$(grep -nE '\$[0-9]|[0-9]+(\.[0-9]+)?%|[0-9]+,[0-9]{3}' "$file" \
             | grep -vE '<!--[[:space:]]*(verified|unverified)' \
             | grep -viE 'word_target|Last updated' || true)"
  if [[ -n "$figures" ]]; then
    warn "concrete figures with no verified/unverified marker — confirm each has a source:"
    head -5 <<<"$figures" | sed 's/^/         /'
  fi
fi

# --- research trail ----------------------------------------------------------
# A chapter's verified markers say what a claim rests on. The research notes say
# what was searched and what was thrown away. See chapters/en/research/README.md.
#
# The cross-check runs one way on purpose: every source cited in the chapter must
# appear in the notes. A cited source that is not in the notes is an unrecorded
# source — which is exactly how a confident-sounding number with no provenance
# gets in. The reverse is allowed: notes may record sources that were read and
# rejected.
echo
unique_sources="$(grep -oE 'source: .*' "$file" | grep -oE 'https?://[^ ;>]+' | sort -u | wc -l | tr -d ' ')"
min_sources=5

if [[ "$unique_sources" -lt "$min_sources" ]]; then
  if [[ "$status_now" == "review" || "$status_now" == "stable" ]]; then
    err "$unique_sources independent source(s) — at least $min_sources required for status '$status_now'"
  else
    warn "$unique_sources independent source(s) — target is at least $min_sources per chapter"
  fi
else
  pass "$unique_sources independent source(s)"
fi

ch_num="$(basename "$file" .md)"; ch_num="${ch_num%%-*}"
notes="$(dirname "$file")/research/${ch_num}-notes.md"

if [[ -f "$notes" ]]; then
  pass "research notes present ($(basename "$notes"))"

  unrecorded="$(grep -oE 'source: .*' "$file" | grep -oE 'https?://[^ ;>]+' | sort -u | while read -r u; do
    grep -qF "$u" "$notes" || echo "$u"
  done)"
  if [[ -n "$unrecorded" ]]; then
    err "source(s) cited in the chapter but absent from the research notes:"
    sed 's/^/         /' <<<"$unrecorded"
  elif [[ "$unique_sources" -gt 0 ]]; then
    pass "every cited source is recorded in the research notes"
  fi

  # The notes' own front matter counts should not understate what the chapter cites.
  declared_kept="$(awk 'NR==1 && $0=="---"{i=1;next} i && $0=="---"{exit} i && /^sources_kept:/{sub(/^sources_kept: */,"");gsub(/[^0-9]/,"");print;exit}' "$notes")"
  if [[ -n "$declared_kept" && "$declared_kept" -lt "$unique_sources" ]]; then
    err "notes declare sources_kept: $declared_kept, but $unique_sources source(s) are cited in the chapter"
  fi
else
  if [[ "$status_now" == "review" || "$status_now" == "stable" ]]; then
    err "no research notes — required before '$status_now': research/${ch_num}-notes.md"
  else
    warn "no research notes yet — start one at research/${ch_num}-notes.md"
  fi
fi

# --- length -----------------------------------------------------------------
# Story-first chapters run shorter and looser than the old essay format. English
# is counted in words, 2000–4000 of body. Chinese has no inter-word whitespace,
# so `wc -w` is meaningless there — it is counted in non-whitespace characters,
# 3200–6400 (roughly 1.6× the English word count, the usual zh/en ratio). The
# range is a corridor, not a quota: a tight chapter that lands its argument is
# finished. See the LENGTH note in templates/chapter-template.md.
fm_language="$(grep -E '^language:' <<<"$fm" | head -1 | sed 's/^language: *//; s/"//g' | tr -d ' ')"
body_text="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{inside=0;next} !inside' "$file")"
words="$(wc -w < "$file" | tr -d ' ')"

if [[ "${fm_language:-en}" == "zh" ]]; then
  if command -v python3 >/dev/null 2>&1; then
    body_metric="$(printf '%s' "$body_text" | python3 -c '
import re, sys
t = sys.stdin.read()
t = re.sub(r"<!--.*?-->", "", t, flags=re.S)
print(len(re.sub(r"\s", "", t)))
')"
  else
    body_metric="$(printf '%s' "$body_text" | grep -v '<!--' | tr -d '[:space:]' | wc -m | tr -d ' ')"
  fi
  unit="characters"
  lo=3200; hi=6400
else
  body_metric="$(printf '%s' "$body_text" | wc -w | tr -d ' ')"
  unit="words"
  lo=2000; hi=4000
fi

echo
echo "  Length: $words words total, $body_metric $unit of body (target $lo–$hi)"
if [[ "$body_metric" -lt "$lo" ]]; then
  warn "body is short — under $lo $unit is thin for a chapter (target $lo–$hi)"
elif [[ "$body_metric" -gt "$hi" ]]; then
  warn "body is long — over $hi $unit, consider splitting or trimming"
fi

# If the author declared a target, flag a large gap between declared and actual.
declared_target="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{exit} inside && /^word_target:/{sub(/^word_target: */,"");gsub(/[^0-9]/,"");print;exit}' "$file")"
if [[ -n "$declared_target" && "$declared_target" -gt 0 ]]; then
  delta=$(( body_metric - declared_target ))
  abs_delta=${delta#-}
  if [[ "$abs_delta" -gt 400 ]]; then
    warn "body is $body_metric $unit but front matter declares word_target: $declared_target"
  fi
fi

# --- verdict ----------------------------------------------------------------
echo
if [[ "$errors" -gt 0 ]]; then
  printf '\033[31m  ✗ %d error(s), %d warning(s)\033[0m\n' "$errors" "$warns"
  exit 1
fi
printf '\033[32m  ✓ 0 errors, %d warning(s)\033[0m\n' "$warns"
