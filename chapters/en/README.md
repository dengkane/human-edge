# Chapters — English

**This directory is the source of truth for the whole book.** The Chinese edition in
[`../zh/`](../zh/) is translated *from* these files, never the other way around. When the two
disagree, English wins and the Chinese gets corrected — see [../zh/README.md](../zh/README.md).

## Chapter index

Ten chapters in four parts. Flip a chapter's status here when it moves; this table is the working
record, and `README.md` at the repo root is the public-facing summary of the same thing.

| # | Title | Part | Free? | Status |
|---|-------|------|-------|--------|
| 01 | The Mirror: Which "Pseudo-Skills" Are Being Exposed? | I — Cognitive Awakening | yes | planned |
| 02 | AI's Blind Spots: Three Things Machines Can't Learn | I — Cognitive Awakening | yes | planned |
| 03 | Prompting as Thinking: From Searcher to Commander | II — Building Your Moat | yes | planned |
| 04 | Taste: Developing Judgment in an Age of "Average Beauty" | II — Building Your Moat | yes | planned |
| 05 | Deep Thinking: Breaking Out of the Filter Bubble | II — Building Your Moat | yes | planned |
| 06 | Story & Emotion: Why AI Can Write a Love Letter but Not a Heartbeat | II — Building Your Moat | yes | planned |
| 07 | Your Second Brain and Your First Brain | III — Human–AI Collaboration Systems | yes | planned |
| 08 | MVP Thinking: Let AI Do the "Thinking," You Do the Trying | III — Human–AI Collaboration Systems | yes | planned |
| 09 | Lifelong Learning 2.0: AI as Your Personal Trainer | IV — The Future of Growth | yes | planned |
| 10 | Epilogue: Be the One Who Presses Enter | IV — The Future of Growth | yes | planned |

No chapter file exists yet. That is why everything reads `planned` — an entry stops being a plan the
moment a file lands in this directory, not when it is decided on.

**All ten chapters are open source**, which is why the "Free?" column is uniform. The paid tier is
the *Premium Pack* (case studies, the prompt template library, the workbook, video walkthroughs),
which lives in `/paid/` and is not part of this repository. If that split ever changes, this table is
where it is recorded.

`part:` in front matter must match one of the four names above exactly — the linter reads them from
the same list.

## Filenames

```
ch<NN>-<kebab-case-slug>.md
```

Enforced by `scripts/check-chapter.sh`, so `ch3-...` or `ch03-Some_Title.md` fails. The current
assignment is:

| # | Filename |
|---|----------|
| 01 | `ch01-the-mirror.md` |
| 02 | `ch02-ais-blind-spots.md` |
| 03 | `ch03-prompting-as-thinking.md` |
| 04 | `ch04-taste-beyond-average-beauty.md` |
| 05 | `ch05-deep-thinking-beyond-the-filter-bubble.md` |
| 06 | `ch06-story-and-emotion.md` |
| 07 | `ch07-second-brain-first-brain.md` |
| 08 | `ch08-mvp-thinking.md` |
| 09 | `ch09-lifelong-learning-2-0.md` |
| 10 | `ch10-be-the-one-who-presses-enter.md` |

**A chapter that has shipped keeps its number.** Numbers appear in filenames, in cross-references
inside the book, and in public links to the repo. A published chapter whose subject turns out to be
wrong gets a new **title** and a new **placement** — not a new number. An unshipped chapter is still
a plan and its number can still move; if you renumber one, renumber the table above in the same
commit, because nothing checks it for you.

## Writing standards

### Length

**~3500 words of body.** The linter warns below 2500 and above 4500. Ten chapters at 3500 is about
35,000 words — a short book, and the right size for ten distinct arguments. It is deliberately *not*
a quota: length is a consequence of having two or three real arguments, each with its own example
and its own limits. A chapter stretching one idea to 3500 words is a chapter missing an argument, not
missing 1200 words. See the LENGTH note at the bottom of
[`../../templates/chapter-template.md`](../../templates/chapter-template.md).

Declare `word_target:` in front matter. The linter cross-checks it against the body and warns if they
are more than 400 words apart — that check is how a template placeholder left at the default gets
caught.

### Structure

- **Two or three body sections of 900–1200 words each.** Each carries its own argument and its own
  example. If two sections make the same point, that is one section — merge them.
- **Name sections after their argument**, never after their position: "A species, not a screwdriver",
  not "Section 2". A heading that could sit on any chapter in the book is a heading that says
  nothing.
- **Open with something concrete** — a scene, a number, a question. The reader should feel the problem
  within three sentences. Not "In the age of AI, ...".
- **Every chapter ends with `## The honest caveats` and `## Do this today`.** Write the caveats on
  purpose rather than bolting them on: who does this advice not apply to, what does it cost, where
  does it break down. Admitting the limits is what makes the rest credible. `Do this today` is three
  actions — one under 30 minutes, one this week, one this quarter.
- **End with `## Further reading`** that links other chapters of *this book* by number. Pointing at
  the chapter that precedes or extends this one is what makes ten files read as a sequence.

Use the template. **Never hand-roll front matter or the disclosure footer** — `check-chapter.sh`
validates both, and the footer's four lines are matched literally.

### Voice

Second person, direct, concrete. Named tools, real prices, actual job titles, specific years. The
book's claim is that ordinary people can build something AI cannot copy, so the prose should sound
like someone who has done it talking to someone who has not — not like a report about them.

Avoid the two failure modes this genre runs on: the breathless ("AI changes everything!") and the
vague ("in today's fast-moving world"). If a sentence would survive being moved to a different
chapter unchanged, delete it.

## Factual claims

Every concrete, checkable claim — an amount, a percentage, a dated event, a named ranking — carries a
marker directly underneath it:

```markdown
<!-- verified YYYY-MM-DD — source: <URL> -->
<!-- unverified -->
```

`verified` **never** means "this sounds right", "this is widely known", or "the model was confident".
It means you opened the source and it says what you claim. A marker that overstates confidence is
worse than no marker, because it tells a reader a check happened when it did not.

Opinion, framing, and prediction need no marker. Mark only what could be falsified.

The linter enforces two of these as **errors**, at any status:

- a `verified` marker with no `— source: <URL>`;
- any `unverified` claim once `status` is `review` or `stable`.

And it enforces as a **warning**, resolved before `review`:

- `unverified` claims while the chapter is still `draft`.

Put a marker under every figure even when it feels obvious. The three failure modes that made this
rule non-negotiable in the reference project this repo was built from — a statistic quoted from a
search snippet rather than the page, a number that had drifted since publication, and a claim whose
only support was another article repeating it — are all invisible in prose and all obvious here.

## Research notes

**Research comes before drafting, not after.** A chapter written first and sourced afterwards gets
claims shaped by the prose, and the research becomes a hunt for support instead of a check on what is
true.

Every chapter has `research/ch<NN>-notes.md`, committed alongside it. Its rules — search trail,
source tiers, and the rejected-sources section that is the point of the file — are in
[research/README.md](research/README.md). Start from
[`../../templates/research-notes-template.md`](../../templates/research-notes-template.md).

The linter cross-checks the two files, one way on purpose:

- **at least 5 independent sources** per chapter — independent meaning separate origins, not one
  report reprinted five times. Fewer than 5 is an error at `review`/`stable`, a warning before that;
- **every source cited in a chapter must appear in its research notes.** A cited URL missing from the
  notes is an unrecorded source, which is exactly how a confident-sounding number with no provenance
  gets in. The reverse is allowed: notes may record sources that were read and rejected;
- the notes' `sources_kept` count must not understate what the chapter cites.

**Open every source before citing it.** A search snippet is a lead, not a source. If a page is
paywalled or refuses extraction, say so in the notes and cite something a reader can check.

## Chapter boundaries

Ten chapters about one thesis overlap if nobody says where the seams are. These are the seams.

| Pair | The line between them |
|------|-----------------------|
| 01 ↔ 02 | 01 is the diagnosis: which "skills" the reader was proud of are quietly worthless now. 02 is the argument: what machines cannot learn, and therefore why there is somewhere to stand. 01 raises the problem, 02 answers it. Neither proceeds without the other. |
| 02 ↔ 03–06 | 02 is the theory — three blind spots. 03–06 are one capability each, mapped to those blind spots. If a chapter in 03–06 does not trace back to one of 02's three, it is in the wrong book. |
| 03 ↔ 05 | 03 is about **asking** — the interface with a model, turning a search into a briefing. 05 is about **thinking** — the judgement you exercise when no model is in the room. 03 without 05 produces a well-briefed person who cannot decide anything. |
| 04 ↔ 06 | 04 is **taste** (what is worth making). 06 is **resonance** (why anyone should care). Taste selects; emotion connects. A chapter about "quality writing" belongs in 04; a chapter about "writing that moves someone" belongs in 06. |
| 05 ↔ 09 | 05 is a practice; 09 is the habit of maintaining practices. 09 must not re-teach 05 — it should assume it and address what happens over years: decay, plateaus, and changing what you are learning for. |
| 07 ↔ 08 | Both are systems. 07 is **accumulation** — memory, notes, a second brain. 08 is **action** — MVP thinking, shipping, cheap experiments. A chapter about organising information is 07; a chapter about acting on it is 08. |
| 09 ↔ 10 | 10 introduces no new framework. It closes the argument and hands the reader the last move. If you find yourself building a model in 10, it belongs in 09. |

Not a boundary, but worth stating: 10 is an epilogue and is shorter than the rest. The linter's
length warnings are calibrated for body chapters — a deliberate ~1500-word epilogue will warn, and
that warning is expected. Note the reason in the chapter's own front matter so the next person does
not "fix" it.

## Status

| Status | Means |
|--------|-------|
| `planned` | An index row and nothing else. No file, no research. |
| `draft` | File exists, argument is taking shape. `unverified` markers allowed. |
| `review` | Ready for a careful read. Every claim marked. Every source in the notes. No leftover scaffolding. |
| `stable` | Published and not being actively revised. Same rules as `review`. |

`check-chapter.sh` reads `status` from front matter and tightens what it tolerates at `review` and
`stable`.
