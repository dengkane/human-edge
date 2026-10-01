# Research notes

One file per chapter: `ch<NN>-notes.md`, committed **alongside the chapter it belongs to**. Start from
[`../../../templates/research-notes-template.md`](../../../templates/research-notes-template.md).

The chapter's `<!-- verified -->` markers tell a reader what a claim rests on. These notes tell them —
and you in six months — what was actually searched, what was found and thrown away, and which
questions went unanswered. Without that, nobody can tell whether a chapter was researched or merely
written confidently, and those two read exactly the same on the page.

## Research comes before drafting

Not after. A chapter written first and sourced afterwards gets claims shaped by the prose, and the
research becomes a hunt for support instead of a check on what is true. The order is:

1. work the research notes until the claims are settled,
2. then draft the chapter from them.

If a draft is already written, treat what exists as a hypothesis and check it — do not start by
looking for sources that agree.

## Source tiers

| Tier | What it is | What it can carry |
|------|-----------|-------------------|
| **Primary** | Original data, official reports and statistics, academic papers, the law, first-hand accounts, an actual pricing page, a company's own filing | A claim, on its own |
| **Secondary** | Reporting *about* someone's data — a news article, a blog post, a summary, a chart someone else made | A lead to the primary source. Not the sole support for a number |

Prefer primary over secondary. When a secondary source is all you can get, say so in the notes and
check whether the primary exists behind it — often the reporting links straight to it, and the
original takes a paragraph to cite properly.

**A search snippet is a lead, not a source.** Open the page. In the reference project this repo's
tooling was built from, the accessible coverage of a paywalled article *contradicted* the snippet
that summarised it, and the snippet was what a first draft had been written from. That failure is
invisible in prose and obvious the moment you open the page.

If a source is paywalled, refuses extraction, or has moved, say so plainly in the notes and cite
something a reader can check instead. An honest gap is worth more than a confident citation nobody can
follow.

## What goes in the file

| Section | Contents |
|---------|----------|
| **Search trail** | The queries you *actually ran*, in order, including the dead ends. Not a cleaned-up summary. A future contributor should be able to re-run your search and land in the same place. Record the tool used, and whether each query helped. |
| **Sources kept** | One row per source supporting a claim. Every `verified` marker in the chapter must appear here, with its tier. |
| **Rejected** | What you found and did not use, and why. |
| **Open questions** | What you could not establish. If a question is load-bearing and unanswered, the chapter should scope the claim down or say plainly that it is unsettled — not write around it. |
| **Claims downgraded or dropped** | Claims the research did not support, that were in an earlier draft. Recording these is how the next revision knows what was already tried. |

### Rejected is the point of the file

Anyone can list sources that agree with them. Recording what you found and chose **not** to use is
where the judgement shows, and it is the first thing an AI-assisted draft skips — a model asked to
support a claim will produce support, not a reason to drop it.

State the reason. The ones that come up most:

- it is secondary, and only repeats a primary you can cite directly;
- the number is contested, and the disagreement is larger than the claim;
- it contradicts a better-sourced source;
- it is marketing or vendor content, not evidence;
- it is real, but about a different population, region, or time period than the claim;
- it is sound, but the claim it supports got cut from the chapter.

## Front matter

```yaml
---
chapter: 1
chapter_file: ch01-the-mirror.md
researched: YYYY-MM-DD
sources_kept: 6
sources_rejected: 3
---
```

`sources_kept` is checked: it must not be lower than the number of distinct sources the chapter
actually cites. A count that understates the chapter is an error, because it means the notes are not
describing the chapter that shipped. Overstating is allowed — notes legitimately record sources that
were read and did not end up in the prose.

## How the linter uses these files

`scripts/check-chapter.sh` cross-references the chapter and its notes **in one direction only**:

- every URL cited in the chapter must appear somewhere in the notes (**error** if not);
- the chapter needs at least **5 independent sources** — independent meaning separate origins, not one
  report reprinted five times. Below 5 is a warning in `draft` and an **error** at `review`/`stable`;
- missing notes are a warning in `draft` and an **error** at `review`/`stable`;
- `sources_kept` must not understate what the chapter cites.

The reverse direction is deliberately not checked: notes may record sources the chapter does not cite,
including rejected ones. That is the whole point of keeping them in the same file.

None of this checks whether a source *says* what you claim. `verified` is a statement that you opened
the page; nothing mechanical can verify that, which is why the marker means exactly that and nothing
looser.
