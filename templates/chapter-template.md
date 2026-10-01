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
word_target: 3500
tags: []
---

<!--
  CHAPTER TEMPLATE — copy to chapters/en/ch<NN>-<slug>.md and fill it in.
  Delete every HTML comment (including this one) before opening the PR.
  See WORKFLOW.md for the drafting → review → publish flow.

  Target length: ~3500 words, the middle of what non-fiction chapters normally
  run (2,500–5,000). Ten chapters at that length is a short book rather than a
  long one, so the length is a floor on seriousness, not a size to hit. See
  "Length" at the bottom of this file for the arithmetic.

  This comment sits AFTER the front matter on purpose. check-chapter.sh
  requires the file to start with '---', so anything above it breaks the
  fresh-copy-still-has-the-template-comment case.
-->

# <NN>. Chapter Title Here

<!--
  OPENING: one concrete scene, number, or question. The reader should feel the
  problem within three sentences. No "In the age of AI, ..." openings.
-->

> **The one thing to take away:** <!-- one sentence the reader should still remember tomorrow -->

## Why this matters now

<!--
  The stakes, grounded in something that actually happened: a layoff, a price
  change, a launch, a hiring shift. If you cannot point at a date or a number,
  the section is probably filler.

  Every concrete, checkable claim — an amount, a percentage, a dated event —
  carries a marker underneath it. See "Factual claims" in chapters/en/README.md.
-->

<!-- verified YYYY-MM-DD — source: <URL> -->

## <Body section — name it after the idea, not "Section 2">

<!--
  TWO OR THREE body sections, each roughly 900–1200 words. Every section carries
  its own argument and its own example. If two sections are making the same
  point, that is one section, not two.

  Name each one after its argument ("A species, not a screwdriver"), never after
  its position. The heading should tell the reader what it claims.

  Concrete over abstract: named tools, real prices, actual job titles, specific
  years. Every concrete, checkable claim gets a source marker — see the
  "verified" notes further down.
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
  LENGTH — why ~3500 words

  Non-fiction chapters normally run 2,500–5,000 words, averaging around
  4,000. 3500 sits in the middle of that convention. At roughly 230 words a
  minute, it is a fifteen-minute read.

  The other half of the reason is the book as a whole. Ten chapters at 3500
  words is roughly 35,000 words — a short non-fiction book, the length of a
  focused argument rather than a survey. That is the right size for this book's
  ten claims, but it does mean every chapter has to carry weight: there is no
  room for a chapter that restates the one before it.

  What not to do to reach the target: restate the heading, open with "with the
  development of AI", or pad the caveats. Length is not the goal. A chapter
  carrying two or three distinct arguments, each with its own example and its
  own honest limits, lands here on its own. If you find yourself stretching a
  single idea to 3500 words, the chapter is missing an argument, not words.

  check-chapter.sh warns below 2500 and above 4500 words of body text.
-->
