---
chapter: 10
chapter_file: ch10-mvp-thinking.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 5
---

# Research notes — Ch. 10: MVP Thinking

Third of the "using AI on purpose" chapters. Per `chapters/en/README.md`:

> 08 is the **instrument** (how to ask). 09 is **accumulation** (memory, notes, a second brain). 10 is
> **action** (MVP thinking, shipping, cheap experiments).

And the boundary that constrains it:

> 09–10 ↔ 11: 09 and 10 build the system; 11 prices it.

**So 10 must not turn into "and here is why offloading hurts you" — that is Ch. 11.** 10 is the build.

## What the research changed

The chapter title is a trap. *"Let AI do the thinking, you do the trying"* reads like "hand the hard part
to the model and go execute." The evidence says almost the opposite, and the correction is the chapter.

The keystone is a randomized control trial on entrepreneurship — **Camuffo et al., Management Science**.
Researchers trained Italian startups to form hypotheses about their idea and test them rigorously,
"very much as scientists do in their research," against a control that followed intuition:

> We find that entrepreneurs who behave like scientists **perform better**, are **more likely to pivot to
> a different idea**, and are **not more likely to drop out** than the control group in the early stages.

And the mechanism, in the authors' own framing, is precision — not confidence:

> a scientific approach improves precision — it **reduces the odds of pursuing projects with false
> positive returns** and **increases the odds of pursuing projects with false negative returns.**

That is the chapter's real thesis, stated precisely. The scientific approach does not make you *right*;
it makes your error rate honest in both directions. It stops you chasing false positives **and** stops you
discarding false negatives. **The thinking is not what you delegate — the thinking is what makes the
trying informative.**

The large-scale replication (759 firms across four RCTs, *Strategic Management Journal*) sharpened it
further, with a result that cuts against the naive reading:

> a **nonlinear effect on radical pivots**, with treated firms running **few** over **no or repeated**
> pivots... the scientific approach enhances entrepreneurs' **efficiency in searching for viable ideas**.

So the effect is not "pivot more." It is *pivot in a disciplined middle band* — not never, not constantly.
That is a genuinely surprising finding and it made the chapter better.

Then the second pillar: why prediction fails, from Flyvbjerg's reference-class-forecasting work.
Inaccuracy is explained by two distinct causes — "**optimism bias** and **strategic misrepresentation**"
— and reference class forecasting "achieves accuracy in projections by basing them on actual performance
in a reference class of comparable actions."

The distinction between those two causes matters enormously for a book about AI, and it is the thing the
popular version of this chapter would miss: **one is a cognitive error and the other is an incentive
problem.** A model can help with the first. It cannot fix the second, and if you ask it to forecast your
project it will happily produce the strategic-misrepresentation version in fluent prose.

And the third: sunk cost, which is where this could leak into Ch. 11's territory. I am using it in its
**action** sense only — the meta-analysis finds the effect's size "**contingent on the respective decision
type**," and that the effect is "**attenuated by time** in utilization decisions." Which is a concrete,
useful fact for a chapter about cutting experiments short: the pull to continue is strongest early and
fades. Ch. 11 owns the capability cost; 10 owns the decision to stop.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | Camuffo scientific approach entrepreneurial RCT | anysearch | yes | **Keystone.** Management Science 2020 + SMJ 2024 replication |
| 2 | planning fallacy reference class forecasting Flyvbjerg | anysearch | yes | Two causes: optimism bias / strategic misrepresentation |
| 3 | effectuation Sarasvathy expert entrepreneurs | anysearch | partly | Confirmed the tradition; **no openable abstract for the 2001 AMR paper** — dropped |
| 4 | lean startup MVP empirical evidence critique | anysearch | yes | Felin et al. critique, via the LRP response |
| 5 | abstract/metadata retrieval | **OpenAlex + Crossref APIs** | yes | Same method as Ch. 09 — see the verification note |
| 6 | sunk cost meta-analysis | anysearch | yes | Used for the *action* sense only |
| 7 | PMI reference-class page | web_fetch | **no** | Cloudflare 403. Used the journal article instead |

## Verification method — same as Ch. 09, stated again

PMC, PubMed, Europe PMC and the publisher pages (INFORMS, Wiley, Elsevier, Sage, Springer, T&F) all
blocked automated access. Findings come from **publisher-deposited abstracts retrieved through the
OpenAlex and Crossref APIs by DOI, cross-checked between the two**.

- **What it is:** the authors' own abstract text, deposited with the DOI, confirmed to resolve in both
  APIs for every source below.
- **What it is not:** I did not open the papers. No methods section, table or figure was read. No claim in
  this chapter depends on a detail below abstract level.

Same honest downgrade as Ch. 09, and the chapter's caveats say so.

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Camuffo, Cordova, Gambardella & Spina, *A Scientific Approach to Entrepreneurial Decision Making: Evidence from a Randomized Control Trial*, **Management Science** 66(2), 2020 — <https://doi.org/10.1287/mnsc.2018.3249> | primary (RCT; 116 Italian startups, ~1 year, 16 data points; **abstract via OpenAlex + Crossref**) | **The chapter's keystone.** Entrepreneurs trained to test hypotheses rigorously "perform better, are more likely to pivot to a different idea, and are not more likely to drop out." The mechanism is **precision**, not confidence: "reduces the odds of pursuing projects with false positive returns and increases the odds of pursuing projects with false negative returns" | yes |
| 2 | Camuffo et al., *A scientific approach to entrepreneurial decision-making: Large-scale replication and extension*, **Strategic Management Journal**, 2024 — <https://doi.org/10.1002/smj.3580> | primary (replication; **759 firms, four RCTs**; **abstract via OpenAlex + Crossref**) | Sharpens source 1 and complicates it: positive impact on **idea termination**, and a **nonlinear effect on radical pivots** — treated firms ran "**few** over **no or repeated** pivots." Mechanism: "enhances entrepreneurs' efficiency in searching for viable ideas and raises their methodic doubt" | yes |
| 3 | Flyvbjerg, *From Nobel Prize to Project Management: Getting Risks Right*, **Project Management Journal** 37(3), 2006 — <https://doi.org/10.1177/875697280603700302> | primary (peer-reviewed; **abstract via OpenAlex + Crossref**) | Forecasts are inaccurate for two distinct reasons: "**optimism bias and strategic misrepresentation**." Reference class forecasting "achieves accuracy in projections by basing them on actual performance in a **reference class of comparable actions**" — the outside view | yes |
| 4 | Felin, Gambardella, Stern & Zenger's Lean Startup critique, as engaged by Ghezzi, *Lean Startup and the business model: Experimenting for novelty and impact*, **Long Range Planning** 53(4), 2019 — <https://doi.org/10.1016/j.lrp.2019.101953> | primary (peer-reviewed; **abstract via OpenAlex + Crossref**) | The critique names three limits of experiment-first practice: "**inadequate guidance provided for hypotheses generation**; **limits of experiential learning from customer feedback**; and the **incremental nature of experimentation outcomes**." This is the counter to the naive MVP story, and it is what the hypothesis discipline answers | yes |
| 5 | Roth, Robbert & Straus, *On the sunk-cost effect in economic decision-making: a meta-analytic review*, **Business Research** 7, 2014 — <https://doi.org/10.1007/s40685-014-0014-8> | primary (meta-analysis; **98 effect sizes**; **abstract via OpenAlex + Crossref**) | The sunk-cost effect is real and its size is "**contingent on the respective decision type**"; specifically the effect is "**attenuated by time** in utilization decisions." Used in the **action** sense only — the pull to continue is strongest early and fades | yes |
| 6 | Sarasvathy's effectuation tradition, as systematised in *Comparing effectuation to discovery-driven planning, prescriptive entrepreneurship, business planning, lean startup, and design thinking*, **Small Business Economics** 54, 2019 — <https://doi.org/10.1007/s11187-019-00153-w> | primary (peer-reviewed comparison; **abstract via OpenAlex + Crossref**) | Method proliferation is itself the problem: "a **proliferation of relatively unrelated methods** with **varying degrees of rigor and relevance**." Also notes effectuation's own weakness — "a **lack of behavioral tactics**." The argument against collecting frameworks | yes |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Camuffo et al. 2024** (source 2) | Contradicts the chapter's own instinct to say "act scientifically → pivot more." The nonlinear result means more pivots is *not* better; the treated firms pivoted **fewer** times than over-pivoting controls. | Adopted and made central. The chapter does not promise "you will pivot more." It promises better-targeted action, and it quotes the few/no-vs-repeated distinction. |
| **Felin et al. critique** (via source 4) | Directly attacks the chapter's premise: experiments give "inadequate guidance for hypotheses generation" and customer feedback has "limits." If hypothesis generation is the weak link, "just run experiments" fails. | Adopted as the reason the *thinking* cannot be delegated. This is what turns the title inside out: the model can draft hypotheses, but the chapter argues the discipline of framing and testing them is the human contribution. |
| **Sarasvathy / effectuation tradition** | Suggests expert entrepreneurs *do not* predict — they control what they can and let goals emerge. On that view, the scientific-approach RCT is testing a method experts don't use. | Acknowledged as a real tension in the literature and **not resolved**. The chapter presents the scientific-approach evidence *and* the means-driven tradition, and says the evidence favors the former for the outcome measured (precision) without claiming effectuation is wrong. |
| **Roth et al.** (source 5) | The sunk-cost effect is "contingent on decision type" — so "stop sunk-cost projects" is not a universal rule; in some decision types the effect is weak or absent. | Adopted: the chapter gives the qualified version and does **not** claim a blanket rule. |
| **Camuffo et al. 2020** (source 1) | Its own RCT is on **Italian startups over ~1 year** with 16 data points. Small, single-country, short-horizon. | Disclosed in the caveats. The 2024 replication (759 firms) is why the finding is usable at all; a single 116-firm trial would not carry the chapter. |

## Rejected

| Source | Why not used |
|--------|--------------|
| Flyvbjerg, Holm & Buhl, *How (In)accurate Are Demand Forecasts in Public Works Projects?* (JAPA, 2005) | **The abstract itself carries a Notice of Redundant Publication** (reproduced in a 2006 *Transport Reviews* article that was **retracted**). Excellent numbers (9 of 10 rail projects overestimated, average 106%), but citing a paper in a retraction-adjacent situation is exactly what this book's factual-claims rules are for. Dropped; source 3 carries the same argument cleanly. |
| Sarasvathy, *Causation and Effectuation* (AMR, 2001) | The canonical effectuation paper — but **no abstract is available** via OpenAlex or Crossref, and AMR is paywalled. I will not put a `verified` marker on a source I cannot quote. Superseded by source 6, which summarises the tradition and is quotable. |
| *Lean startup and the business model: Experimentation revisited* (LRP, 2019) | Abstract is one sentence — insufficient to cite. |
| Popular Lean Startup / MVP content (UserTesting blog, Facebook group posts, richmondbizsense PDF, scientometric summaries) | The genre this chapter must not become. |
| *CEO Overconfidence and Innovation*; *Managerial Overconfidence and Corporate Policies* | Adjacent and interesting, but about executive miscalibration and firm innovation — not about whether cheap experiments improve outcomes. Off-target. |

## A citation defect caught in review

The first draft's marker on the **precision mechanism** (§ "improves precision — reduces the odds of
pursuing false positives...") carried a mistyped DOI: `10.1287/mnsc.2018.3241` instead of `...3249`.
Caught by verifying every marker URL against Crossref before publishing.

Both strings resolve — which is exactly why this matters. `10.1287/mnsc.2018.3241` is a real paper, on
**consumer discrimination and minority hiring**, entirely unrelated to this chapter. A reader following
the marker would have been sent to the wrong work on a load-bearing claim.

This is the exact failure the book's research rules exist to prevent, and it was caught mechanically
rather than by care: **every DOI in this chapter is now checked to resolve AND to return the expected
title.** Recorded here because `verified` markers are only as good as the URL behind them.

## Open questions

- **The whole chapter rests on abstracts** — same disclosure as Ch. 09, recorded in the chapter itself.
- **The RCT population is startups.** Applying "run cheap experiments and test your hypotheses" to a
  career, a book or a personal project is an extrapolation. Flagged in the caveats.
- **The tension between the scientific-approach evidence and the effectuation tradition is left open.**
  Both are in the literature; the chapter does not pretend the field has settled it.
- **Ch. 11 owns the cost.** 10 must not argue that offloading damages capability. Sunk cost is used here
  only for the *decision to stop acting*, never for what the tool costs you.
- **Ch. 12 must not re-teach 10.** Decay and plateaus over years are 12's material.

## Claims downgraded or dropped

- **"Let AI do the thinking and you do the trying."** Inverted — the title survives, the reading does not.
  The chapter's thesis is that the **thinking is the human part** and the trying is what makes it pay.
- **"A scientific approach makes you pivot more."** Corrected by the 2024 replication: the effect is
  **nonlinear**. Not never, not constantly.
- **"Experiments always tell you the truth."** Rejected via the critique: hypotheses generation is the
  weak link, and customer feedback has documented limits.
- **"Cut every sunk-cost project."** Softened to the meta-analytic version: the effect is real but
  decision-type-dependent and time-attenuated.
- **"Effectuation is the expert method."** Not claimed. Presented as a competing tradition with a real
  tension against the RCT evidence, and left unresolved.
