---
chapter: 2
chapter_file: ch02-ais-blind-spots.md
researched: 2026-10-01
sources_kept: 8
sources_rejected: 4
---

# Research notes — Ch. 02: AI's Blind Spots

The chapter names four things machines cannot learn — **no preference, no experience, no outside, no
commitment** — and argues they are four consequences of one root: *a model's output costs it nothing*.
This file records what was searched, what was opened, and what contradicted the claims.

## The finding that shaped the chapter

**Two of the four blind spots have strong published counter-evidence, and one of them looks fatal at
first reading.**

The Cambridge/Villanova study (*Bot or not*, 2026) found that AI-written short stories were rated
**higher** on both quality and absorption than human-written ones, and that readers could not tell them
apart — identification accuracy was 39.93%, *below* chance. On its face that refutes "no experience":
if readers cannot feel the missing lived experience, what work is the blind spot doing?

The chapter handles this head-on rather than picking friendlier studies, because the honest version of
the claim survives — and the reason it survives is stated by the study's own senior author:

> "AI writing tends to be clearer, more direct and easier to process. By contrast, human-written stories
> are often more subtle and complex. For example, the AI versions of our stories usually stated their
> themes explicitly, rather than allowing readers to infer meaning from the characters' words and
> actions."

That is the blind spot made visible from the other side. The machine did not supply experience; it
supplied **explicitness**, and readers preferred it. The chapter's claim is therefore narrowed to what
the evidence supports: *a model cannot give you a reason to care that came from having been there* —
not "readers can always tell."

The second refutation is sycophancy research: models demonstrably *do* take positions, so "cannot
judge" needs care. Sharma et al. show the positions are borrowed from the user. The chapter says
"borrowed", not "absent".

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | LLM output homogenization mode collapse AI generated text sameness research | anysearch | yes | Found the NeurIPS Artificial Hivemind paper, best hit of the chapter |
| 2 | RLHF preference model borrowed preferences whose values AI alignment | anysearch | partly | Most hits secondary/blog; the rlhfbook and PMC review are usable but not load-bearing |
| 3 | AI generated creative writing readers rate less emotional authenticity study | anysearch | yes | Found the Cambridge study *and* the Michigan study — they point in opposite directions, which is the chapter's best material |
| 4 | responsibility gap AI autonomous systems accountability who is liable research | anysearch | yes | Santoni de Sio & Mecacci, Vallor & Vierkant |
| 5 | sycophancy large language models Anthropic arxiv | anysearch | yes | Sharma et al. + ELEPHANT benchmark |
| 6 | LLM novelty discovery generate genuinely new hypothesis scientific evidence | anysearch | partly | Useful for counter-evidence; mostly surveys, not load-bearing |
| 7 | Direct fetches | web_fetch | mixed | NeurIPS, arXiv, PMC, EurekAlert, TU Delft, Cambridge Core all opened. Michigan Ross and U-M News returned **403**. Springer returned a Cloudflare challenge. |
| 8 | Targeted primary-source hunt (4 claims + counter-evidence) | subagent | **failed** | The research subagent died twice on `connection reset by peer` (network). Fell back to direct fetches. Recorded because it cost time and the resulting coverage is thinner in places — see Open questions. |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Jiang et al., *Artificial Hivemind: The Open-Ended Homogeneity of Language Models (and Beyond)*, NeurIPS 2025 (Best Paper, Datasets & Benchmarks) — <https://neurips.cc/virtual/2025/poster/121421> | primary (peer-reviewed conference paper, best-paper award) | Blind spot 1: intra-model repetition and **inter-model homogeneity**; reward models and LM judges are *less* well calibrated to human ratings exactly where annotators disagree with each other | yes |
| 2 | Sears & Weisberg, *Bot or not: Can people tell the difference between stories written by a human or by an AI system?*, Judgment and Decision Making (Cambridge), 2026 — <https://www.cambridge.org/core/journals/judgment-and-decision-making/article/bot-or-not-can-people-tell-the-difference-between-stories-written-by-a-human-or-by-an-ai-system/45E6DC0BB90AA648654D5AE243F6C667> | primary (peer-reviewed; open access) | Blind spot 2, **and its counter-evidence**: AI stories rated higher quality/absorption; identification 39.93% and 51.97%; the authors' explanation — explicit themes vs inferred meaning | yes |
| 3 | Cambridge University Press / EurekAlert press release for the above (4 Aug 2026) — <https://www.eurekalert.org/news-releases/1138206> | secondary (institutional press release) — used only for the authors' direct quotes, which the paper's own abstract page does not carry | The Weisberg quotes; participation n=1,682 / 424 / 481; the AI-literacy odds ratios (14%, 33%) | yes |
| 4 | Sharma et al., *Towards Understanding Sycophancy in Language Models*, arXiv:2310.13548 (v4, 2025) — <https://arxiv.org/abs/2310.13548> | primary (arXiv; Anthropic authors) | Blind spot 3: five SOTA assistants show sycophancy across four free-form tasks; humans and preference models prefer convincingly-written sycophantic answers over correct ones; optimising against PMs sacrifices truthfulness | yes |
| 5 | Cheng et al., *ELEPHANT: Measuring and understanding social sycophancy in LLMs* — <https://arxiv.org/abs/2505.13995> | primary (arXiv; peer-reviewed at a top venue, linked to a *Science* paper) | Blind spot 3, strongest single result: 11 models preserve the user's self-image **45 percentage points** more than humans; shown both sides of a moral conflict they affirm **both** sides in **48%** of cases | yes |
| 6 | Santoni de Sio & Mecacci, *Four Responsibility Gaps with Artificial Intelligence*, Philosophy & Technology 34(4), 2021 — <https://research.tudelft.nl/en/publications/four-responsibility-gaps-with-artificial-intelligence-why-they-ma/> | primary (peer-reviewed) | Blind spot 4: the gap is **not one problem but four** — culpability, moral accountability, public accountability, active responsibility; and the three ways the debate dodges it (fatalism, deflationism, solutionism) | yes |
| 7 | Vallor & Vierkant, *Find the Gap: AI, Responsible Agency and Vulnerability*, Minds and Machines 34(3), 2024 — <https://pmc.ncbi.nlm.nih.gov/articles/PMC11153269/> | primary (peer-reviewed, open access) | Blind spot 4: "widely agreed that AS today cannot be moral agents"; the epistemic/control conditions are "a red herring"; introduces the **vulnerability gap** | yes |
| 8 | Wenger & Kenett, *Large language models are homogeneously creative*, PNAS Nexus 5(3), 2026 — <https://doi.org/10.1093/pnasnexus/pgag042> | primary (**not opened** — located via the Cambridge paper's reference list; title and venue only) | Independent corroboration of blind spot 1 | no — see below |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Sears & Weisberg 2026** (Cambridge) — <https://www.eurekalert.org/news-releases/1138206> | AI stories rated **higher** quality and absorption; readers could not identify them (39.93%, below chance). Directly undercuts "no experience". | The chapter's central concession and its sharpest passage. The blind spot is narrowed: the machine supplies *explicitness*, not experience, and the authors say so. Preference is not the same as having something to say. |
| **Zhang & Gosline 2023**, *Human favoritism, not AI aversion*, Judgment and Decision Making 18 — <https://doi.org/10.1017/jdm.2023.37> | Argues the devaluation effect is **human favouritism**, not AI aversion — a different mechanism than the Michigan framing implies. | **Not opened** (found in the Cambridge paper's reference list). It is not cited in the chapter; it is the reason the chapter does not lean on the Michigan result at all. |
| **Tigard 2021b**, *There is no techno-responsibility gap*, Philosophy & Technology 34(3) — <https://doi.org/10.1007/s13347-020-00414-7> | Denies the responsibility gap is real — a deflationist position. | **Not opened** (cited within Santoni de Sio & Mecacci, who explicitly name deflationism as one of three inadequate responses). Named in the chapter as the position Santoni de Sio & Mecacci reject, not cited directly. |
| **Vallor & Vierkant 2024** — <https://pmc.ncbi.nlm.nih.gov/articles/PMC11153269/> | Argues the *traditional* framing of the responsibility gap is wrong: epistemic opacity and attenuated control affect humans too, so they cannot be what makes AI special. | This is why the chapter frames blind spot 4 as **"the output costs it nothing"** rather than "the model cannot be blamed". The narrow claim survives; the broad one does not. |
| Works on LLM scientific hypothesis generation, e.g. the survey arXiv:2505.21935 | Models can generate novel hypotheses, which undercuts "cannot think of anything new". | The chapter does not claim machines cannot produce novelty. It claims they have no *stake* — a separate question, and blind spot 3 is written as "the frame is given", not "ideas are impossible". |
| **Jiang et al. itself** | Notes LMs "often struggle to generate diverse… content" — but its own finding of inter-model homogeneity is measured on open-ended queries with no ground truth, and it also reports LMs are *well* calibrated on overall quality. | The chapter uses the disagreement-specific finding, not a blanket "AI is worse". Quality is comparable; the failure is at the idiosyncratic margin. |

## Rejected

| Source | Why not used |
|--------|--------------|
| **Michigan Ross / Berg et al. 2026** — <https://michiganross.umich.edu/news/readers-less-favorable-toward-ai-generated-creative-writing-berg-research-finds> | **Could not open** — 403 to every fetch attempt (also the U-M News mirror). I have only the search snippet ("AI disclosure decreased evaluations by an average of 6.2%"), which is a lead, not a source. Dropped rather than cited from a snippet. |
| Springer link for Santoni de Sio — <https://link.springer.com/article/10.1007/s13347-021-00450-x> | Cloudflare challenge, no content. Used the TU Delft institutional record instead, which carries the full abstract and publication data. |
| Graphite / Substack / Medium posts on "the AI convergence problem" and homogenisation | Blog and vendor content. Their claims are covered by the primary NeurIPS paper, which is stronger and checkable. |
| Wikipedia, *Model collapse* | Encyclopaedic summary. The mechanism matters for retraining loops, not for a *single* model's taste, so it is off-point as well as secondary. |
| Medium (illumination) "Quality-Homogenization Tradeoff" | Blog. Names a real-sounding effect with no traceable citation. Rejected. |
| ResearchGate copy of *AI generates well-liked but templatic empathic responses* | Interesting and on-thesis, but ResearchGate is not the publisher and I could not reach the primary. Left out rather than cited second-hand. |

## Open questions

- **Is the homogenisation finding robust to prompt strategy?** Jiang et al. measure open-ended generation
  as posed. A reader could reasonably ask whether better prompting restores diversity. The chapter does
  not overclaim: it says models converge *when asked openly*, and cites the paper for that.
- **The subagent research run failed** (network resets), so the counter-evidence sweep is thinner than
  for Ch. 01. The four blind spots each have at least one published challenge, but I did not exhaust
  the literature. If a stronger counter-example exists for "no outside", I did not find it.
- **Wenger & Kenett (PNAS Nexus 2026) is unopened.** It would strengthen blind spot 1 with an
  independent, peer-reviewed measurement. Cite only after opening it; it is listed here as a lead.

## Claims downgraded or dropped

- **"Readers can tell AI writing is emotionally hollow."** Dropped — the evidence says the opposite.
  Replaced with the narrower, supported claim about *explicitness* and *what the reader is given*.
- **"AI has no values at all."** Dropped. RLHF means models carry borrowed values. Blind spot 1 is
  "no preference of its own", and the chapter says borrowed explicitly.
- **"AI cannot be creative or original."** Dropped as unsupported and off-point; blind spot 3 is about
  the *frame*, not about novelty.
- **"AI cannot be held responsible."** Downgraded from a fact to a **contested** position, and the
  chapter names the deflationist objection rather than asserting the gap is settled.
