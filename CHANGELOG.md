# Changelog

What shipped, and when. One entry per chapter or infrastructure change.

The workflow requires a chapter's entry to be written before it publishes — see
[WORKFLOW.md](WORKFLOW.md#updating-the-index-and-changelog).
`scripts/publish-chapter.sh` stages this file alongside the chapter when it has uncommitted changes,
and warns if a new chapter arrives without one.

---

## Unreleased

### Added

- Repository scaffolding: `AGENTS.md`, `WORKFLOW.md`, `chapters/{en,zh}/README.md`, research-note
  standards, the `scripts/` publishing toolchain, and the chapter and research-note templates.
  Adapted from a comparable book project and re-pointed at this one's structure.

- **Ch. 01, *The Mirror*** — first chapter drafted, with `chapters/en/research/ch01-notes.md`.
  3,159 words of body, 15 independent sources, 28 sourced claims. Research ran first and **changed the
  chapter**: the draft was going to claim that pay has shifted toward judgment, and no source supports
  that — the evidence supports an *employment* shift only. The chapter says so and documents the
  counter-evidence (including the Denmark null result and the support-agent finding where AI helped
  novices most) rather than burying it. The Chinese edition ships with it — 28 source markers carried
  across one-for-one, written as Chinese rather than translated word for word. Rewritten to the
  *story first* standard (opens on the METR developers' speed-up experiment).

- **Ch. 02, *AI's Blind Spots*** — 3,721 words of body, 7 independent sources, 14 sourced claims.
  Names the four blind spots (no preference / no experience / no outside / no commitment) and argues
  they are four consequences of one root: a model's output costs it nothing. Research again changed the
  chapter — the Cambridge *Bot or not* study (AI stories rated higher than human ones, identification
  below chance) forced the experience claim to be narrowed to "a model cannot give you a reason to care
  that came from having been there", and the counter-evidence is stated rather than buried. Rewritten to
  the *story first* standard (opens on the same question — quitting vs. staying — drawing two opposite
  lists, neither of which costs the model anything).

- **Ch. 03, *Taste*** — 3,367 words of body, 6 independent sources, 16 sourced claims. The first
  Part II capability. Research again redirected the chapter: the instinctive version ("AI output is
  generic") is false — web design converged 44% between 2010 and 2019 with no generative AI in the loop.
  The chapter relocates the claim onto the mechanism both human and model share (processing fluency /
  beauty-in-averageness) and on the Science Advances finding that AI raises individual creativity while
  making collective output more similar. Its two honest gaps — no peer-reviewed study of taste training,
  and the 44% figure cited second-hand — are stated in the caveats. Rewritten to the *story first*
  standard (opens on the Indian writer whose "S" the assistant completes as "Shaquille O'Neal").

- **Ch. 04, *Story & Emotion*** — 3,457 words of body, 6 independent sources, 16 sourced claims. The
  "no experience" capability. Research forced the chapter away from its obvious form: AI-written empathy
  was rated **more compassionate than expert human crisis responders**, so "AI can't do emotion" is
  refuted. The chapter instead splits two questions — *is this good empathy?* (the machine often wins)
  from *is someone there?* (it cannot be) — grounded in nine studies / 6,000+ participants where
  identical text was rated more resonant when attributed to a human. Second half adds story *structure*,
  which the title promised and the first draft omitted. Rewritten to the *story first* standard (opens
  on the worst week of your life, and the kindest reply turning out to be machine-written).

- **Ch. 05, *Cross-Domain Thinking*** — 3,211 words of body, 5 independent sources, 10 sourced claims.
  The "no outside" capability, and the book's most exposed claim. `chapters/en/README.md` had
  pre-committed: if the human-side argument did not hold up, "the chapter changes, not the sentence."
  It held — and the evidence supplied it independently. LLMs fail far transfer to an unfamiliar domain
  (Stevenson et al., TACL) yet produce 90-173% more diverse solutions when prompted for cross-domain
  analogies (Shen et al.) — so the obstacle is the *decision to look*, not capacity. The Einstellung
  research then shows humans get trapped too (experts performing three standard deviations below
  skill), so the moat is not ability: it is that a reframe has to be paid for. Rewritten to the *story
  first* standard (opens on a chess player playing the familiar move and never really re-searching).

- **Ch. 06, *Judgment Without a Right Answer*** — 3,324 words of body, 5 independent sources, 11 sourced
  claims. Closes Part II ("no commitment"). Research **reversed the chapter's instinct**: the intuition
  is "with no right answer, judge me on the outcome" — but the evidence says process accountability
  improves judgment quality while outcome accountability degrades it, pushing people into heuristic
  processing. A second finding (Sheridan & Reingold, PLOS ONE) added the half the first draft lacked:
  people abandon a course of action on a **blunder** but not on a slow disappointment, which is exactly
  what "no right answer" looks like from inside. Rewritten to the *story first* standard (opens on the
  Thursday deadline, the model's steady recommendation, and the feeling of having decided).

- **Ch. 07, *Deep Thinking*** — 3,656 words of body, 9 independent sources, 17 sourced claims. Opens
  Part III. Research **inverted the chapter a second time**: the title promises escaping the filter
  bubble, and the Reuters Institute's literature review finds the strong filter-bubble claim
  unsupported. The chapter therefore makes the harder claim — the pull toward agreement is *internal*
  and not fixed by changing the information supply — and then lands Stanovich & Toplak's paradox as its
  spine: actively open-minded thinking predicts good reasoning on nearly everything **except the
  avoidance of myside thinking**, which they call the concept's own quintessence. So "be more
  open-minded" is documented not to work on the failure this chapter is about, and the fix has to be
  structural. Delivers the section `chapters/en/README.md` assigned here — verifying what a model tells
  you. Rewritten to the *story first* standard (opens on a late-night scroll where every link confirms
  what you already believed, and it feels like being informed).

- **Ch. 08, *Prompting as Thinking*** — 3,368 words of body, 6 independent sources, 11 sourced claims.
  Closes Part III. The chapter most likely to become a tips listicle, and the research killed that
  version: prompt **reformatting that preserves meaning swings accuracy by up to 76 points** (Sclar et
  al., ICLR 2024), which makes "the right wording" incoherent; chain-of-thought helps **mainly on math
  and logic** (Sprague et al., ICLR 2025); and the field's best survey catalogues **58 techniques**
  (Schulhoff et al.), which is an argument against memorising them, not for it. So the thesis became the
  opposite of a listicle — *wording is unstable; the thinking is what transfers* — and the chapter
  delivers the four parts of a briefing (intent, context, constraints, standard of done), each
  demonstrated on a worked example. Rewritten to the *story first* standard (opens on the same question
  rephrased three times, with the intent never once stated).

- **Ch. 09, *Your Second Brain and Your First Brain*** — 3,327 words of body, 6 independent sources,
  10 sourced claims. Opens Part IV. Research **inverted the chapter**: the "second brain" pitch says
  externalise your memory; the evidence says offloading **raises immediate performance and lowers memory
  for the offloaded content** (Grinschgl et al., QJEP 2021) — and being *aware* of a coming test did not
  protect the memory. But their third experiment found the cost **almost fully reversible**, which
  reframed the chapter from a warning into a design problem. Result: three rules for building a second
  brain that serves the first — capture the **pointer, not the content**; make the system **ask, not
  tell**; **space reviews by retention horizon**. Boundary honoured: the cost thesis is **Ch. 11's**, and
  09 explicitly declines it rather than pre-empting it. Rewritten to the *story first* standard (opens on
  reading your own summary six weeks later, and remembering only where to look a year after that).

- **Ch. 10, *MVP Thinking*** — 3,351 words of body, 6 independent sources, 10 sourced claims. Third
  "using AI on purpose" chapter. The title's advice ("let AI do the thinking, you do the trying") is
  **inverted by the research**: an RCT found founders trained to test explicit hypotheses "perform
  better," and the mechanism is **precision** — fewer false positives *and* fewer false negatives, i.e.
  the thinking is what makes the trying informative. The larger replication complicated it: a
  **nonlinear** effect on pivots, so the lesson is neither "pivot more" nor "never pivot." Flyvbjerg's
  split — **optimism bias vs strategic misrepresentation** — is used to show where a model helps (the
  outside view) and where it cannot (your incentives).

  **A citation defect was caught mechanically before publish:** a marker's DOI was mistyped
  (`…3241` vs `…3249`), and both resolve — the wrong one to an unrelated paper on hiring discrimination.
  Every DOI in the chapter now verifies to its expected title.

- **Ch. 11, *The Cost of Offloading*** — 3,495 words of body, 6 independent sources, 12 sourced claims.
  The book's own counter-argument, and the best-sourced chapter in it: **three of the five key findings
  were read in full text**, not from abstracts (Bainbridge 1983, Casner et al. 2014, Dahmani & Bohbot
  2020), via `pypdf` extraction of openly-hosted PDFs. The chapter's finding is a *split*: automating a
  task preserves the **physical** skill and costs the **cognitive** layer underneath it (Casner: hand
  skills "mostly intact," cognitive tasks degraded) — which is why nobody notices. Dahmani & Bohbot answer
  Ch. 09's demand for better-than-correlational evidence by explicitly ruling out reverse causation. The
  AI-specific MIT study is cited **together with its published methodological critique**, and the chapter
  states plainly that its weakest evidence is the AI evidence and its strongest is forty years old.
  Satisfies the strict contract: a worked case (the cockpit), no retraction of 09–10, and an explicit
  refusal to end on "be careful."

- **Ch. 12, *Lifelong Learning 2.0*** — 3,348 words of body, 6 independent sources, 17 sourced claims.
  Opens Part V, and answers Ch. 11's diagnosis. Research corrected the chapter's premise twice: the
  famous **"two-sigma"** tutoring result does not survive the controlled experiments (human tutoring is
  **d=0.79**, not 2.0 — and intelligent tutoring systems had already matched it in 2011), and the
  Harvard AI-tutor RCT that beat active learning did so because **"pedagogical best practices must be
  explicitly and carefully built into each such application"** — the model was the pipe, not the
  pedagogy. The hinge is the randomized "metacognitive laziness" finding: **essay scores up, knowledge
  gain and transfer flat** — Ch. 11's hand/head split in education. Also repaired the practice doctrine:
  deliberate practice explains **<1%** of performance variance in professions.

  **A malformed marker URL (`https://10.3102/...`, missing `doi.org/`) was caught by the linter** before
  publish, and Bloom's two-sigma claim was given its own proper attribution marker.

- **Ch. 13, *Epilogue: Be the One Who Presses Enter*** — 2,249 words of body, 5 independent sources,
  7 sourced claims. **The book is drafted in full.** Obeys the strictest structural contract: introduces
  **no new framework** — it closes the argument and hands the reader the last move. Carries the regret
  evidence (Gilovich & Medvec) as the one external support for the closing claim, and is honest that the
  effect replicates "with weaker effects" and failed in one of four studies. Declared length is
  deliberately short for an epilogue; the remaining linter warning is the documented, expected one.

### Changed

- **Writing style changed from essay to story, and the length corridor widened.** The book's chapters
  were argued like essays — thesis first, defended for ~3,500 words — and read as correct but dull.
  Readers arrive from short-form video and decide within a screen or two, so the standard is now
  *story first*: open on a person, a moment, a date; short paragraphs of two or three sentences;
  concrete nouns; let the argument arrive through the turn in a scene. Length is now **2000–4000 words
  of body** for English and **3200–6400 characters** for Chinese — a corridor, not a quota.
  `scripts/check-chapter.sh` reads `language:` and counts accordingly, which also removes the
  whitespace-tokenisation warnings that always fired on Chinese chapters. Updated in the same pass:
  `AGENTS.md` (new *Story first* section), `WORKFLOW.md`, `chapters/en/README.md` (*Length*, new
  *Story first*, *Structure*, *Voice*), `chapters/zh/README.md` (story rules for translation, the
  character-count note that replaces the old "known linter limitations"), and
  `templates/chapter-template.md`. The thirteen existing chapters are being rewritten to the new
  standard, starting with Ch. 01 and Ch. 03 as the style reference.
- Chapter directory settled as `chapters/` (`book/` was dropped before any chapter existed), so the
  tooling and the documentation agree.
- Homepages now state that **all thirteen chapters are open source**; the paid tier is the Premium
  Pack rather than a set of withheld chapters.
- **Outline revised twice before anything was written** (no chapter file existed, so no number had
  shipped). The first pass moved prompting out of Part II; the second resolved the counting problem in
  the other direction and added three chapters:
  - **Ch. 02 now names four blind spots, not three**, and Part II has exactly four chapters mirroring
    the four capabilities `README.md` promises on its first page: *judgment, taste, emotional
    resonance, cross-domain thinking*. Previously only taste and emotion had a chapter, so two of the
    book's own promises had no home — `glossary.md` defined all four.
  - **05 Cross-Domain Thinking** (new) — AI interpolates within what it has seen; it does not carry a
    structure from one field to another. The missing third blind spot.
  - **06 Judgment Without a Right Answer** (new) — deciding when the data is silent. Where
    `Fuzzy decision-making` from `glossary.md` finally lands.
  - **11 The Cost of Offloading** (new) — the only chapter that argues against the book's own advice.
    Twelve chapters arguing one direction would read as advocacy; this is the counterweight that makes
    09-10 advice rather than a pitch.
  - Deep Thinking moved 04 -> 07 and prompting 06 -> 08, into Part III *Thinking With a Machine*:
    neither is something a machine cannot do, so neither belonged in Part II.
  - Parts went from 4 to 5; Ch. 12-13 keep their numbers (was 09-10).
- Ch. 07 (Deep Thinking) gains a named section on **verifying what a model tells you** — the "you
  judge" beat of the book's loop, which previously had no home.
- `glossary.md` gains `Cognitive offloading`, `Interpolation`, and a plain-language entry for
  `Judgment without a right answer`; `Cross-domain thinking`, `Fuzzy decision-making`, and `Emotional
  resonance` now point at the chapters they belong to.

---

## Chapter status

Tracked in the index table at the top of [`chapters/en/README.md`](chapters/en/README.md), which is
the working record. No chapter has been drafted yet.

| Chapter | Status |
|---------|--------|
| 01–13 | 📋 Planned |
