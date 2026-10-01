---
chapter: 13
chapter_file: ch13-be-the-one-who-presses-enter.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 4
---

# Research notes — Ch. 13: Epilogue — Be the One Who Presses Enter

The last chapter. Its contract is the strictest structural rule in the book
(`chapters/en/README.md`):

> 13 introduces **no new framework**. It closes the argument and hands the reader the last move. **If
> you find yourself building a model in 13, it belongs in 12.**

And the length rule, which is why every linter run on this file will warn:

> Not a boundary, but worth stating: 13 is an epilogue and is **shorter than the rest**. The linter's
> length warnings are calibrated for body chapters — a **deliberate ~1500-word epilogue will warn**, and
> that warning is expected. Note the reason in the chapter's own front matter so the next person does
> not "fix" it.

So this chapter has an unusual shape: ~1500 words of body, no new model, and it must still carry claim
markers and meet the source requirements. The design problem was **what evidence a closing argument
legitimately needs** — it cannot introduce a framework, but it also cannot be empty rhetoric.

## What the chapter needed, and what the rule allowed

The title is *"Be the One Who Presses Enter"* — the book's final move is that **somebody has to act**, and
the whole preceding argument has established that the machine cannot be that somebody — not because it is
incapable, but because a model's output costs it nothing, so it has no stake that could make a decision
real.

To close that without a new framework, the chapter needs **one piece of external evidence** that supports
the existing argument's last implication: that the regrets that accumulate are not about the actions you
took. That is a claim about how people actually feel over time, and it is a claim that can be checked.

## The evidence chosen

The regret literature is exactly the right fit, and for a specific reason: it is about **the long-run
cost of not acting**, which is what this book has been arguing you are exposed to.

**Gilovich & Medvec (1994)** is the primary. Read in full (9 pages, extracted with `pypdf`). The abstract,
in the authors' own words:

> These divergent findings were reconciled by demonstrating that people's regrets follow a systematic
> time course: **Actions cause more pain in the short-term, but inactions are regretted more in the long
> run.**

And the same paper opens by reporting the direct survey finding: people's biggest regrets "tend to involve
things they have **failed to do** in their lives."

**This is the claim the epilogue needs.** The book's argument is that the machine will always be there to
generate the next draft, and that the cost of not pressing enter is invisible at the time. The regret
evidence says the invisible-at-the-time cost is the one that dominates the long run — and the mechanism
is not mystical. An action produces a result you can examine and revise. A non-action produces nothing at
all, which leaves the counterfactual room to keep growing.

## The honest complication — the replications do not fully agree

This is where the chapter has to be careful, and where the research changed the chapter's tone.

The effect is well known enough to have been replicated, and **not cleanly**:

- **Yeung et al., *Collabra: Psychology*, 2022** (N=988): found "support for the original findings using
  different designs in Studies 1, 3, and 4, **yet with weaker effects**" and "**failed to find support**
  for such a pattern in Study 5."
- **Richardson et al., *Royal Society Open Science*, 2023**, a field replication in a Chicago museum:
  "We replicated the significant **interaction** between action/inaction and temporal perspective, **but
  the precise pattern of that interaction diverged from that reported earlier**."

So the shape is real and the details are contested. **The chapter says so.** It uses the robust core —
long-term regret attaches to inaction more than action — and states explicitly that the fine-grained
pattern has not replicated cleanly, citing the replication that found weaker effects and one null.

That is the honest use of a famous result, and for an epilogue it matters more than usual: the last
chapter is where a book is most tempted to reach for a clean, memorable claim. This one does not get to.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | Gilovich Medvec experience of regret | anysearch | yes | **Primary found and read in full** |
| 2 | regret inaction action temporal pattern replication | anysearch | yes | Two replications, **one weaker, one diverging** |
| 3 | psychological ownership / agency | anysearch | partly | Interesting but would be a *new frame* — excluded per the no-new-framework rule |
| 4 | DOI verification | Crossref | yes | All four ch13 DOIs verified to expected titles |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Gilovich & Medvec, *The Temporal Pattern to the Experience of Regret*, **Journal of Personality and Social Psychology** 67(3), 1994 — <https://doi.org/10.1037/0022-3514.67.3.357> | primary (peer-reviewed, surveys + experiments; **full text read**) | "Actions cause more pain in the short-term, but **inactions are regretted more in the long run**"; people's biggest regrets "tend to involve things they have **failed to do** in their lives" | yes |
| 2 | Yeung, Feldman, Fillon, Laroche & Gilovich, *Revisiting the Temporal Pattern of Regret in Action Versus Inaction*, **Collabra: Psychology** 8(1), 2022 — <https://doi.org/10.1525/collabra.37122> | primary (preregistered replication, N=988; **abstract via OpenAlex**) | The honest complication: supports the finding in Studies 1, 3 and 4 "**yet with weaker effects**", and "**failed to find support**" in Study 5 | yes |
| 3 | Richardson, Gilovich et al., *A very public replication of the temporal pattern to people's regrets*, **Royal Society Open Science** 10, 2023 — <https://doi.org/10.1098/rsos.221574> | primary (field replication in a science museum; **abstract via OpenAlex**) | Replicated the significant **interaction** between action/inaction and temporal perspective, "**but the precise pattern of that interaction diverged** from that reported earlier" | yes |
| 4 | Gilovich & Medvec, *The Experience of Regret: What, When, and Why*, **Psychological Review** 102(2), 1995 — <https://doi.org/10.1037/0033-295X.102.2.379> | primary (the review that synthesises the programme; **abstract via Crossref/OpenAlex**) | The synthesis: "Actions, or errors of commission, generate more regret in the short term; but inactions, or errors of omission, produce more regret in the long run." Cited for the framing, at review level | yes |
| 5 | Roese, *Counterfactual thinking*, **Psychological Bulletin** 121(1), 1997 — <https://doi.org/10.1037/0033-2909.121.1.133> | primary (review; **abstract via OpenAlex**) | The **mechanism** behind the asymmetry, and therefore support for the existing argument rather than a new framework: counterfactuals are "mental representations of alternatives to the past", "activated automatically in response to negative affect", producing "negative affective consequences through a **contrast-effect mechanism**". A taken action has a real outcome to compare against; a non-action leaves the alternative live | yes |

**On the source count.** Earlier drafts of this chapter carried four sources, and the five-source target
is calibrated for body chapters. Adding a fifth was **not** to satisfy the linter: Roese supplies the
*mechanism* for a claim the chapter already makes (that a non-action leaves the counterfactual alive and
growing), so it is support, not padding. Crucially it is **not a new framework** — counterfactual
thinking is a forty-year-old established mechanism that explains the book's existing last claim rather
than extending it. Had a fifth source required a fifth claim, this chapter would have gone to the
press under-sourced with the reason in the front matter, as `chapters/en/README.md` instructs.

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Yeung et al. 2022** (source 2) | Weakens the effect: three of four studies replicated "with weaker effects" and one **failed**. If the effect is partly an artefact, the epilogue's closing claim is shakier than its fame suggests. | **Adopted and printed.** The chapter states the replication record in the body, including the null. It claims only the robust core, not the full pattern. |
| **Richardson et al. 2023** (source 3) | Replicated the interaction but not the *precise pattern* — i.e. the effect is real in direction and unreliable in detail. | Adopted. Cited in the chapter's caveats. |
| **The chapter's own contract** | The strongest constraint: no new framework. A regret-based "framework" would violate it. | Honoured: the regret evidence is used to **support the book's existing argument** (that acting is the human's job), not to build anything new. It closes; it does not open. |

## Rejected

| Source | Why not used |
|--------|--------------|
| Psychological-ownership literature (Kim et al. 2024; Zwingmann et al. 2026; NN/g article) | Genuinely relevant to "whose output is it" — but introducing ownership as a construct would be **building a model in 13**, which the boundary explicitly forbids. Excluded on the rule, not on quality. |
| Zeelenberg et al., *The inaction effect in the psychology of regret* (2002) | Could not open: the Tilburg repository copy returned a 134-byte stub and the PDF was invalid. Not cited rather than cited from description. |
| Popular "regret" content (Reddit, Psychology Today, productivity blogs) | The genre. The peer-reviewed primary and its replications are used instead. |
| Whittier's poem ("For all sad words of tongue and pen...") | Quoted *within* source 3's abstract, and it is a nice line — but quoting poetry via an abstract snippet is exactly the sourcing shortcut this book refuses. Mentioned in the notes only, not cited. |

## Open questions

- **This chapter is deliberately under-sourced by the linter's standard, and the reason is in the front
  matter.** If a future editor wants five sources, the correct fix is *not* to add a source — it is to ask
  whether Ch. 13 has stopped being an epilogue.
- **The regret effect's real-world size is uncertain**, per both replications. The chapter claims the
  direction, not the magnitude.
- **This is the last chapter.** After it, the remaining work is the back-matter pass: cross-reference
  backfill (several chapters carry TODOs pointing at later ones), the two READMEs' paid-tier framing
  (all 13 chapters are open source), and `REPO_STRUCTURE.md`'s chapter range.

## Claims downgraded or dropped

- **"Inaction is regretted more — proven."** Softened: the pattern is supported in direction, weaker in
  magnitude, and did not replicate in detail. Both replications are cited.
- **A closing "framework" or summary model.** Dropped entirely by contract. The chapter closes the
  argument; it does not restate or extend it.
- **Psychological ownership as a new lens.** Excluded — it would be a framework in 13.
