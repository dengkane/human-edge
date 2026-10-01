# Chapters — English

**This directory is the source of truth for the whole book.** The Chinese edition in
[`../zh/`](../zh/) is translated *from* these files, never the other way around. When the two
disagree, English wins and the Chinese gets corrected — see [../zh/README.md](../zh/README.md).

## Chapter index

Thirteen chapters in five parts. Flip a chapter's status here when it moves; this table is the working
record, and `README.md` at the repo root is the public-facing summary of the same thing.

Part II is the moat: four capabilities, one for each of the four blind spots Ch. 02 names. The pairing
is deliberate and mirrors the four capabilities `README.md` promises — taste, emotional resonance,
cross-domain thinking, judgment. If Part II ever gains or loses a chapter, Ch. 02's title has to
change with it.

| # | Title | Part | Free? | Status |
|---|-------|------|-------|--------|
| 01 | The Mirror: Which "Pseudo-Skills" Are Being Exposed? | I — Cognitive Awakening | yes | draft |
| 02 | AI's Blind Spots: Four Things Machines Can't Learn | I — Cognitive Awakening | yes | draft |
| 03 | Taste: Developing Judgment in an Age of "Average Beauty" | II — Building Your Moat | yes | draft |
| 04 | Story & Emotion: Why AI Can Write a Love Letter but Not a Heartbeat | II — Building Your Moat | yes | draft |
| 05 | Cross-Domain Thinking: Why AI Interpolates but Never Connects | II — Building Your Moat | yes | draft |
| 06 | Judgment Without a Right Answer: Deciding When the Data Is Silent | II — Building Your Moat | yes | draft |
| 07 | Deep Thinking: Breaking Out of the Filter Bubble | III — Thinking With a Machine | yes | draft |
| 08 | Prompting as Thinking: From Searcher to Commander | III — Thinking With a Machine | yes | draft |
| 09 | Your Second Brain and Your First Brain | IV — Systems and Their Costs | yes | planned |
| 10 | MVP Thinking: Let AI Do the "Thinking," You Do the Trying | IV — Systems and Their Costs | yes | planned |
| 11 | The Cost of Offloading: What You Lose When AI Does Your Thinking | IV — Systems and Their Costs | yes | planned |
| 12 | Lifelong Learning 2.0: AI as Your Personal Trainer | V — The Future of Growth | yes | planned |
| 13 | Epilogue: Be the One Who Presses Enter | V — The Future of Growth | yes | planned |

No chapter file exists yet. That is why everything reads `planned` — an entry stops being a plan the
moment a file lands in this directory, not when it is decided on.

**All thirteen chapters are open source**, which is why the "Free?" column is uniform. The paid tier
is the *Premium Pack* (case studies, the prompt template library, the workbook, video walkthroughs),
which lives in `/paid/` and is not part of this repository. If that split ever changes, this table is
where it is recorded.

`part:` in front matter must match one of the five names above exactly — the linter reads them from
the same list.

### Why thirteen, and why these five parts

Three chapters were added after the outline was first drafted, each closing a gap that the repo's own
documents had already opened:

- **05 Cross-Domain Thinking** and **06 Judgment Without a Right Answer** — `README.md` promises the
  reader four capabilities (*judgment, taste, emotional resonance, cross-domain thinking*) and
  `glossary.md` defines all four, but only two had a chapter. Part II now mirrors the promise exactly.
- **11 The Cost of Offloading** — every other chapter argues that AI makes you stronger. A book that
  only argues one direction reads as advocacy; 11 is the counterweight, and it is what makes 09–10
  advice rather than a sales pitch.

Deep Thinking (07) moved out of Part II at the same time. It is not a blind spot — it is a method for
thinking *alongside* a machine — so it belongs with prompting in Part III. Part II is now strictly
"what a machine cannot do"; Part III is "how you work with one."

Part IV carries the two build-a-system chapters plus their cost, because the cost only exists once
there is a system to offload into.

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
| 03 | `ch03-taste-beyond-average-beauty.md` |
| 04 | `ch04-story-and-emotion.md` |
| 05 | `ch05-cross-domain-thinking.md` |
| 06 | `ch06-judgment-without-a-right-answer.md` |
| 07 | `ch07-deep-thinking-beyond-the-filter-bubble.md` |
| 08 | `ch08-prompting-as-thinking.md` |
| 09 | `ch09-second-brain-first-brain.md` |
| 10 | `ch10-mvp-thinking.md` |
| 11 | `ch11-the-cost-of-offloading.md` |
| 12 | `ch12-lifelong-learning-2-0.md` |
| 13 | `ch13-be-the-one-who-presses-enter.md` |

**A chapter that has shipped keeps its number.** Numbers appear in filenames, in cross-references
inside the book, and in public links to the repo. A published chapter whose subject turns out to be
wrong gets a new **title** and a new **placement** — not a new number. An unshipped chapter is still
a plan and its number can still move; if you renumber one, renumber the table above in the same
commit, because nothing checks it for you.

## Writing standards

### Length

**~3500 words of body.** The linter warns below 2500 and above 4500. Thirteen chapters at 3500 is
about 45,000 words — a short book, the length of a sustained argument rather than a survey. It is
deliberately *not* a quota: length is a consequence of having two or three real arguments, each with
its own example and its own limits. A chapter stretching one idea to 3500 words is a chapter missing an argument, not
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
  the chapter that precedes or extends this one is what makes thirteen files read as a sequence.

Use the template. **Never hand-roll front matter or the disclosure footer** — `check-chapter.sh`
validates both, and the footer's four lines are matched literally.

### Verifying what a model tells you

The book's loop is `AI generates → You judge → You refine → You internalize → You level up`. The
"you judge" beat is the one that fails quietly in practice: a confidently wrong answer, a citation
that does not exist, an argument that reads well and says nothing. Ch. 07 (Deep Thinking) carries this
as a named section rather than a chapter of its own — catching the model out is a skill exercised
while reasoning, and Ch. 07 is where reasoning-under-uncertainty already lives. Ch. 09 covers storing
what you concluded; neither covers noticing that the conclusion was never true.

This is also why the research rules below are strict about *opening* a source rather than trusting a
snippet. The book asks the reader to do something the tooling has to be honest about, and a
`verified` marker used loosely is the same failure the chapter warns against.

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

## The four blind spots

Ch. 02 names four things machines cannot learn. The count is load-bearing: Part II has exactly four
chapters, one per blind spot, and each mirrors a capability `README.md` promises the reader on its
first page — *judgment, taste, emotional resonance, cross-domain thinking*. Change this list and
Ch. 02's title and Part II's contents change in the same commit.

| # | Blind spot | What it means | Chapter |
|---|-----------|---------------|---------|
| 1 | **No preference** | The model knows what is *common* — the mode of what it was trained on. Nothing in that makes anything *good*, and "good" is a claim a person makes and can be wrong about. | 03 Taste |
| 2 | **No experience** | It has read every account of grief and has never lost anyone. Resonance comes from *who is speaking* — someone who could have been hurt — not from how the sentence is assembled. | 04 Story & Emotion |
| 3 | **No outside** | It optimises inside the frame it was given. Seeing that the frame *is* the problem, or that another field's frame fits better, means standing outside it — and nothing in training rewards that. | 05 Cross-Domain Thinking |
| 4 | **No commitment** | It can list the options and rank them. It cannot want one, and when the choice turns out wrong it is not the one who pays. | 06 Judgment Without a Right Answer |

### All four are the same claim

Stated once here rather than repeated across four chapters: **a model's output costs it nothing.** No
preference, no experience, no outside, no commitment are four faces of that one fact. This is why Part
II is an argument rather than a list — and why each of the four chapters has to show a *different*
consequence of it, not restate the root. If two of them land on the same consequence, they are one
chapter.

### The test, applied

`AGENTS.md` sets the test for any claim about AI's limits: *if this limit disappeared, would it be
because a model got better, or because people agreed to something?* Machine-side limits erode on a
curve; human-side limits get decided. Each of the four, run through it:

| Blind spot | It would vanish only because... | Verdict |
|---|---|---|
| No preference | ...people stopped asking who gets to say what is good. | human-side — no expiry |
| No experience | ...we agreed that a description of grief is the same as having grieved. | human-side — decided, not discovered |
| No outside | ...someone built a model rewarded for reframing the problem rather than answering it. | **machine-side — contested, see below** |
| No commitment | ...responsibility for a decision stopped attaching to a person. | human-side — no expiry |

**No outside is the one to keep honest.** "A model cannot think beyond its training distribution" is
exactly the kind of claim that gets cheaper every year, and a book that stakes its third moat on it
will read as dated within a release cycle or two. So Ch. 05 must argue the human side instead: *a
connection is worth making because someone decided to spend time on it, and a model's output arrives
with no such cost attached.* Put that way the chapter survives a better model — the claim was never
that machines cannot connect, only that the connection that matters is the one you commit to. If that
argument does not hold up when Ch. 05 is researched, the chapter changes, not the sentence.

Corollary for drafting: any sentence in 03–06 shaped like "AI is currently bad at X" is a bug. Write
the structural version or cut it.

## Chapter boundaries

Thirteen chapters about one thesis overlap if nobody says where the seams are. These are the seams.
The pairs that are easiest to confuse come first.

| Pair | The line between them |
|------|-----------------------|
| 01 ↔ 02 | 01 is the diagnosis: which "skills" the reader was proud of are quietly worthless now, and how to tell the difference between knowledge you can look up and knowledge you have to earn. 02 is the argument: four things machines cannot learn, and therefore why there is somewhere to stand. 01 raises the problem and gives the reader a way to test themselves; 02 explains why the problem has a floor under it. Neither proceeds without the other. |
| 02 ↔ 03–06 | 02 names four blind spots — no preference, no experience, no outside, no commitment — and Part II is exactly four chapters, one capability per blind spot: 03 taste, 04 story & emotion, 05 cross-domain thinking, 06 judgment. They are four consequences of one root (a model's output costs it nothing), so each chapter must show a *different* consequence, not restate the root. The full table is in [The four blind spots](#the-four-blind-spots). |
| 03 ↔ 05 | Both are about connecting things, which is why they are the easiest pair in the book to blur. 03 is **taste** — knowing that two things belong together because they share a quality, inside one domain. 05 is **cross-domain** — carrying a structure from a field where it is obvious to a field where nobody has tried it. Taste selects; cross-domain transplants. A chapter about "knowing good work when you see it" is 03; a chapter about "borrowing the immune system's logic to fix a supply chain" is 05. |
| 03 ↔ 04 | 03 is **taste** (what is worth making). 04 is **resonance** (why anyone should care). Taste selects; emotion connects. A chapter about "quality writing" belongs in 03; a chapter about "writing that moves someone" belongs in 04. |
| 06 ↔ 02 | The sharpest overlap in the book, because "machines can't judge" sounds like a blind spot and is one. The split: 02 states that machines do not bear consequences; 06 teaches the reader what to *do* about it — how to decide when the data is silent, who owns the outcome, and how to act without a defensible answer. 02 is the theory; 06 is the practice. 06 must not re-argue 02. |
| 06 ↔ 07 | Judicial versus generative reasoning. 06 is deciding **when you must choose anyway** — commitment under no right answer. 07 is thinking **clearly before you choose** — resisting the filter bubble, forming your own view. 06 is a deadline; 07 is a discipline. |
| 07 ↔ 08 | Both sit in Part III, and both are method. 07 is judgement exercised **outside** a model's presence. 08 is the interface **with** one — turning a search into a briefing. 08 without 07 produces a well-briefed person who cannot decide anything; 07 without 08 wastes the tool. |
| 07 ↔ 12 | 07 is a practice; 12 is the habit of maintaining practices. 12 must not re-teach 07 — it should assume it and address what happens over years: decay, plateaus, and changing what you are learning for. |
| 08 ↔ 09–10 | All three are "using AI on purpose"; the difference is what you are building. 08 is the **instrument** (how to ask). 09 is **accumulation** (memory, notes, a second brain). 10 is **action** (MVP thinking, shipping, cheap experiments). A chapter about organising information is 09; a chapter about acting on it is 10. |
| 09–10 ↔ 11 | 09 and 10 build the system; 11 prices it. **11 is the only chapter that argues against the book's own advice**, and it must not read as a disclaimer. It has to be as concrete as the chapters it qualifies: a worked case where offloading cost someone a capability they did not notice losing. 11 does not retract 09–10 — it says which parts of the system you must keep doing by hand. If 11 could be summarised as "but be careful", it has failed. |
| 11 ↔ 12 | 11 is the **cost** of offloading; 12 is the **response** to it. 11 diagnoses what decays; 12 is how you keep training the thing that decays. 12 should open by assuming 11's case, not restating it. |
| 12 ↔ 13 | 13 introduces no new framework. It closes the argument and hands the reader the last move. If you find yourself building a model in 13, it belongs in 12. |

The arrangement was revised twice before anything was written. The first pass moved prompting out of
Part II, which had four capabilities against Ch. 02's promise of three blind spots. The second pass
resolved that in the other direction: Ch. 02 now names **four** blind spots, Part II has four chapters
that mirror the four capabilities `README.md` promises, and Deep Thinking moved to Part III where
method belongs. Three chapters were added at the same time — 05 and 06 to close the gap between the
promise and the outline, and 11 because a book that only argues one direction is advocacy. Both
READMEs, the filename table, the part lists, and the length arithmetic were updated in the same pass —
see the git history.

Not a boundary, but worth stating: 13 is an epilogue and is shorter than the rest. The linter's
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
