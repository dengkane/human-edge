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
  3,290 words of body, 15 independent sources, 25 sourced claims. Research ran first and **changed the
  chapter**: the draft was going to claim that pay has shifted toward judgment, and no source supports
  that — the evidence supports an *employment* shift only. The chapter says so and documents the
  counter-evidence (including the Denmark null result and the support-agent finding where AI helped
  novices most) rather than burying it. The Chinese edition ships with it — 27 source markers carried
  across one-for-one, written as Chinese rather than translated word for word.

- **Ch. 02, *AI's Blind Spots*** — 3,892 words of body, 7 independent sources, 14 sourced claims.
  Names the four blind spots (no preference / no experience / no outside / no commitment) and argues
  they are four consequences of one root: a model's output costs it nothing. Research again changed the
  chapter — the Cambridge *Bot or not* study (AI stories rated higher than human ones, identification
  below chance) forced the experience claim to be narrowed to "a model cannot give you a reason to care
  that came from having been there", and the counter-evidence is stated rather than buried.

- **Ch. 03, *Taste*** — 3,340 words of body, 6 independent sources, 14 sourced claims. The first
  Part II capability. Research again redirected the chapter: the instinctive version ("AI output is
  generic") is false — web design converged 44% between 2010 and 2019 with no generative AI in the loop.
  The chapter relocates the claim onto the mechanism both human and model share (processing fluency /
  beauty-in-averageness) and on the Science Advances finding that AI raises individual creativity while
  making collective output more similar. Its two honest gaps — no peer-reviewed study of taste training,
  and the 44% figure cited second-hand — are stated in the caveats.

- **Ch. 04, *Story & Emotion*** — 3,457 words of body, 6 independent sources, 16 sourced claims. The
  "no experience" capability. Research forced the chapter away from its obvious form: AI-written empathy
  was rated **more compassionate than expert human crisis responders**, so "AI can't do emotion" is
  refuted. The chapter instead splits two questions — *is this good empathy?* (the machine often wins)
  from *is someone there?* (it cannot be) — grounded in nine studies / 6,000+ participants where
  identical text was rated more resonant when attributed to a human. Second half adds story *structure*,
  which the title promised and the first draft omitted.

- **Ch. 05, *Cross-Domain Thinking*** — 3,211 words of body, 5 independent sources, 10 sourced claims.
  The "no outside" capability, and the book's most exposed claim. `chapters/en/README.md` had
  pre-committed: if the human-side argument did not hold up, "the chapter changes, not the sentence."
  It held — and the evidence supplied it independently. LLMs fail far transfer to an unfamiliar domain
  (Stevenson et al., TACL) yet produce 90-173% more diverse solutions when prompted for cross-domain
  analogies (Shen et al.) — so the obstacle is the *decision to look*, not capacity. The Einstellung
  research then shows humans get trapped too (experts performing three standard deviations below
  skill), so the moat is not ability: it is that a reframe has to be paid for.

- **Ch. 06, *Judgment Without a Right Answer*** — 3,324 words of body, 5 independent sources, 11 sourced
  claims. Closes Part II ("no commitment"). Research **reversed the chapter's instinct**: the intuition
  is "with no right answer, judge me on the outcome" — but the evidence says process accountability
  improves judgment quality while outcome accountability degrades it, pushing people into heuristic
  processing. A second finding (Sheridan & Reingold, PLOS ONE) added the half the first draft lacked:
  people abandon a course of action on a **blunder** but not on a slow disappointment, which is exactly
  what "no right answer" looks like from inside.

### Changed

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
