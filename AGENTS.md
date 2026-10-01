# Project Instructions

**The Human Edge** — a living book on building what AI cannot copy, by using AI itself.
Ten chapters in four parts, English-first, then translated into Chinese. Co-authored with AI,
human-edited, published in public and updated continuously — so a write-it-once, print-it-and-ship
mindset does not apply: chapters change after release.

The book's loop, and the reason it is written the way it is:

```
AI generates → You judge → You refine → You internalize → You level up
```

A chapter that only describes that loop, without exercising the judgement it asks the reader for, has
not been written yet.

## Authoritative documents

Read these rather than relying on this file. It is a pointer, deliberately thin, and does not restate
them.

| Document | Owns |
|---|---|
| [`WORKFLOW.md`](WORKFLOW.md) | The full write-and-ship flow, script reference, troubleshooting |
| [`chapters/en/README.md`](chapters/en/README.md) | Chapter index, writing standards, **factual-claims rules**, chapter boundaries |
| [`chapters/zh/README.md`](chapters/zh/README.md) | Chinese translation standard — **write it as native Chinese, not word for word** |
| [`chapters/en/research/README.md`](chapters/en/research/README.md) | Research-note format, source tiers |
| [`templates/chapter-template.md`](templates/chapter-template.md) | The chapter format. **Copy it; never hand-roll front matter** |

## Defaults that are checked automatically

`scripts/check-chapter.sh` enforces these. Get them wrong and it fails, so they are the cheapest
things to know up front.

- **~3500 words of body.** Warns below 2500 or above 4500. That is the middle of the non-fiction
  convention, and what makes ten chapters a short book rather than a pamphlet — not a target to pad
  to. (Ch. 10 is an epilogue and is deliberately shorter; see the note in
  `chapters/en/README.md`.)
- **Two or three body sections of 900–1200 words**, named after their arguments ("A species, not a
  screwdriver"), never "Section 2".
- **At least 5 independent sources per chapter.** Independent means separate origins, not one report
  reprinted five times.
- **Every source cited in a chapter must appear in its research notes**, and the notes' `sources_kept`
  must not understate what the chapter cites. The check runs one way on purpose: notes may record
  sources that were read and rejected.
- Every chapter ends with `## The honest caveats` and `## Do this today`. The linter checks the
  disclosure footer in this repo's exact format.

## Research comes before drafting

Not after. A chapter written first and sourced afterwards gets claims shaped by the prose, and the
research becomes a hunt for support instead of a check on what is true.

Each chapter has `chapters/en/research/ch<NN>-notes.md`, committed alongside it, recording:

- the search queries actually run (including dead ends),
- sources kept, with tier: **primary** (original data, official reports, statistics, papers, law,
  first-hand accounts) can carry a claim alone; **secondary** reporting is a lead only,
- **sources rejected and why** — the part with the most value, and the first thing an AI-assisted
  draft skips,
- open questions, and claims downgraded or dropped.

**Open every source before citing it.** A search snippet is a lead, not a source. If a page is
paywalled or refuses extraction, say so in the notes and cite something a reader can check.

## Claim markers

```markdown
<!-- verified YYYY-MM-DD — source: <URL> -->   the source was OPENED and says what you claim
<!-- unverified -->                            not checked yet
```

`verified` never means "this sounds right", "this is widely known", or "the model was confident". It
is a claim that you read the source — and that you noticed when sources contradicted each other.
`unverified` is fine in `draft` and is an **error** at `review`/`stable`. A `verified` marker with no
`source:` is an error at any status.

Opinion, framing, and prediction need no marker. Mark only what could be falsified.

## Chapter numbers are stable once published

Numbers live in filenames, in cross-references inside the book, and in public links. A chapter that has
shipped keeps its number — change its **title** and its **placement** instead. A chapter that has not
shipped is still a plan, and its number can still change; if you renumber one, update the index table
in `chapters/en/README.md` in the same commit, because nothing checks it for you.

Parts are grouped by what the reader needs next, not by number:

| Part | Chapters | Note |
|---|---|---|
| I — Cognitive Awakening | 01–02 | 01 is the diagnosis; 02 is the theory of what machines cannot learn |
| II — Building Your Moat | 03–05 | exactly three, one per blind spot in 02: taste, deep thinking, story & emotion |
| III — Human–AI Collaboration Systems | 06–08 | how to ask, how to remember, how to act |
| IV — The Future of Growth | 09–10 | sustaining it, and the closing argument |

**All ten chapters are open source.** The paid tier is the *Premium Pack* — case studies, the prompt
template library, the workbook, video walkthroughs — which lives in `/paid/` and is not tracked in
this repository. See `README.md`.

## Content judgement: machine-side vs human-side

The book's test for any claim about AI's limits (Ch. 02): **if this limit disappeared, would it be
because a model got better, or because people agreed to something?** Machine-side limits erode on a
curve; human-side limits get decided. Prefer structural arguments over "AI is currently bad at X",
which has an expiry date — and which the book's own thesis about taste, judgement, and emotional
resonance is only credible if it rests on structure rather than on today's model.

## Workflow

```bash
scripts/check-chapter.sh  chapters/en/ch<NN>-<slug>.md   # lint; non-zero exit on errors
scripts/publish-chapter.sh chapters/en/ch<NN>-<slug>.md # branch → commit → push → draft PR
scripts/pr-merge.sh draft/<slug>                        # mark ready → squash-merge → clean up
scripts/doctor.sh                                       # when push or PR fails
```

`publish-chapter.sh` stages the chapter **plus** `chapters/en/README.md`, `CHANGELOG.md`,
`chapters/en/research/README.md`, and the chapter's own notes, when they have uncommitted changes.
Anything else you edited stays unstaged — it will not guess.

A draft PR **cannot** be merged (HTTP 405) and there is no REST endpoint to un-draft it.
`pr-merge.sh` handles the GraphQL step; doing it by hand means marking the PR ready in the UI first.

## Boundaries

- **Chapter content ships via `draft/<slug>` branches and PRs, not commits to `main`.** One chapter
  per branch per PR. Infrastructure — `AGENTS.md`, `WORKFLOW.md`, `scripts/`, `templates/` — is
  committed to `main` directly, because it is not published content and has no review step of its own.
- **Never commit `.git-ssh/` or `.secrets/`.** They hold a private key and a GitHub token and are
  gitignored. If you ever see either appear in `git status`, stop and fix `.gitignore` before
  committing anything.
- **Do not hand-roll chapter front matter or the disclosure footer.** Copy the template.
- Scripts avoid `jq` and `gh` as hard dependencies — `jq` is not installed on the machine this was
  built on. `python3` is used for JSON.

## The constraints are discipline, not machinery

Stated plainly because it affects how much you can trust a green check: **there is no CI, no
pre-commit hook, and no server-side branch protection.** `check-chapter.sh` only runs when it is
invoked, and `publish-chapter.sh` only calls it on the file you name. Committing straight to `main`
would succeed and nothing would complain.

That makes the rules above a convention this repo holds itself to, not a fence. Verify rather than
assume, and when you find the docs and the scripts disagreeing, the scripts are right — see the git
history for how often the docs have needed correcting.
