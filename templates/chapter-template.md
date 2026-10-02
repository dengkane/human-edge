---
chapter: 0
title: "Chapter Title Here"
part: "Part I — Cognitive Awakening"
status: draft
language: en
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
assisted_by: "<model> + Reasonix"
edited_by: "Ken Deng"
word_target: 3000
tags: []
---

<!--
  CHAPTER TEMPLATE — copy to chapters/en/ch<NN>-<slug>.md and fill it in.
  Delete every HTML comment (including this one) before opening the PR.
  See WORKFLOW.md for the drafting → review → publish flow.

  Target length: 2000–4000 words of body. A corridor, not a quota — a tight
  2200 that lands its argument is a finished chapter. See "Length" and
  "Story first" at the bottom of this file.

  This comment sits AFTER the front matter on purpose. check-chapter.sh
  requires the file to start with '---', so anything above it breaks the
  fresh-copy-still-has-the-template-comment case.
-->

# <NN>. Chapter Title Here

<!--
  OPENING: a person, a moment, a date. Start inside a scene and let the reader
  feel the problem before you name it. No "In the age of AI, ..." openings, no
  thesis-first paragraph. See "Story first" at the bottom of this file.
-->

> **The one thing to take away:** <!-- one sentence the reader should still remember tomorrow -->

## Why this matters now

<!--
  The stakes, shown through one story that actually happened: someone lost a
  job, a price moved, a launch failed. If you cannot point at a date, a number,
  or a name, the section is probably filler.

  Every concrete, checkable claim — an amount, a percentage, a dated event —
  carries a marker underneath it. Storytelling changes how a claim arrives,
  never whether it needs a source. See "Factual claims" in
  chapters/en/README.md.
-->

<!-- verified YYYY-MM-DD — source: <URL> -->

## <Body section — name it after the idea, not "Section 2">

<!--
  TWO OR THREE body sections, each reached through a scene and each carrying its
  own argument and example. Length follows what the section has to say; there is
  no 900–1200-word shape to hit. If two sections make the same point, that is one
  section, not two.

  Name each one after its argument ("A species, not a screwdriver"), never after
  its position. The heading should tell the reader what it claims.

  Write it in short paragraphs — two or three sentences, one idea each. Concrete
  over abstract: named tools, real prices, actual job titles, specific years.
  Every concrete, checkable claim gets a source marker — see the "verified"
  notes further down.
-->

## <Body section — the framework or method>

<!--
  If you introduce a framework, give it a name the reader can repeat to someone
  else. Anything procedural reads better as a table or a numbered list than as
  a paragraph. Both chapters so far lean on a comparison table — old vs. new,
  what you learned vs. what happened. It works; use it.

  For a taxonomy with the same structure repeated (three maps, four roles),
  use `###` subsections and repeat a fixed shape inside each. A shape that has
  worked well here:

      ### Map 1: The career ladder

      *The model:* what people believe.

      *Why it's failing:* the specific mechanism that broke it.

      *The tell:* how a reader recognises this in their own life.

  Anything that can go stale — prices, model names, legal facts, salary
  figures — gets its own marker underneath it:

      <!-- verified 2026-03-14 — source: https://example.com/the-report -->

  A 'verified' marker means you opened the source and it says what you claim.
  Never use it to mean "this sounds right". An overstated marker is worse than
  no marker: it tells the reader a check happened when it did not.

  If you cannot source a claim yet, say so out loud rather than dressing it up:

      <!-- unverified -->

  Unverified claims are fine in draft and must be gone before 'review'.
-->

<!-- verified YYYY-MM-DD — source: <URL> -->

## The honest caveats

<!--
  Where does this advice break down? Who does it not apply to? What does it
  cost? Admitting the limits is what makes the rest credible — and every
  chapter so far has needed this section, so write it on purpose rather than
  bolting it on.
-->

## Do this today

1. <!-- One action, under 30 minutes -->
2. <!-- One action, this week -->
3. <!-- One action, this quarter -->

## Further reading

- <!-- Link + one-line reason to click it. No bare URLs. -->
- <!-- Cross-reference other chapters of this book. This is a book, not a
         collection of posts: pointing at the chapter that precedes or extends
         this one is what makes the sequence feel deliberate.
         e.g. "Ch. 03 of this book, *Title*, ..." -->

---

<!--
  DISCLOSURE FOOTER — required on every chapter. Keep this exact format; the
  linter checks for all four markers.
-->

---
📅 Last updated: YYYY-MM-DD
🤖 Assisted by: <model> + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---

<!--
  LENGTH — why 2000–4000 words

  The book used to ask for ~3500 words, the middle of the non-fiction
  convention. That made chapters that defended a thesis for fifteen minutes —
  correct, and boring. Readers now arrive from short-form video and decide in a
  screen or two whether to stay.

  So the target is a corridor, not a quota. 2000 words that land the argument
  are a finished chapter. 4000 is the ceiling for a chapter carrying three
  scenes. The Chinese edition is counted in characters instead — roughly
  3200–6400, at the usual zh/en ratio of about 1.6×; check-chapter.sh reads
  `language:` and counts accordingly.

  What not to do to reach the floor: restate the heading, open with "with the
  development of AI", or pad the caveats. Length is not the goal. A chapter that
  opens on a person, shows two or three turns, and lands its argument will reach
  the range on its own. If you find yourself stretching one idea, the chapter is
  missing a story, not words.

  check-chapter.sh warns below 2000 or above 4000 words of body for English, and
  below 3200 or above 6400 characters for Chinese.

  STORY FIRST — the standard the whole book is held to

  - Open on a scene: one person, one moment, a date or a number that lands.
  - Short paragraphs: two or three sentences, one idea each.
  - Concrete nouns and verbs: a job title, a price, a model name, a year.
  - Show the turn: the scene ends somewhere the reader did not expect, and that
    is where the argument goes.
  - Say it plainly: if a sentence needs a second read to parse, rewrite it.

  What does not change: every concrete claim still carries its source marker,
  the research trail and fixed headings still apply, and the chapter still has
  to be worth the reader's time. A short chapter is fine. An empty one dressed
  as a story is not.
-->
