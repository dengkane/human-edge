---
chapter: 1
chapter_file: ch01-the-mirror.md
researched: 2026-10-01
sources_kept: 15
sources_rejected: 6
---

# Research notes — Ch. 01: The Mirror

The chapter argues that AI has repriced two kinds of knowledge: **codified** knowledge (textbook,
procedural, "how it is done") got cheap, and **tacit** knowledge (judgment from experience) held or
rose in value. This file records what was searched, what was opened, and — most importantly — what
contradicted the thesis and changed the chapter.

## A correction this research forced

The draft I would have written without this step claimed that **pay has shifted toward judgment** —
that people with taste and experience now earn more. **No source I opened supports that.** What the
data supports is narrower:

> Employment has shifted toward experience. **Pay has not.**

Three independent sources are explicit on this:

- Dallas Fed: adjustment is visible in employment; wage growth in AI-exposed occupations shows *no*
  relationship with AI exposure once experience premium is controlled for.
- Stanford (Canaries): "adjustment is in employment rather than base compensation."
- Census CES-26-27: earnings growth merely "slowed slightly" relative to less-exposed industries.
- NBER WP 33777 (Denmark): effects on earnings "precisely estimated to be null," ruling out anything
  above ~2%.

The chapter was written to claim the employment effect and the *distance* between knowing a thing and
having decided it — not a pay bump. Any sentence implying judgment now commands a higher salary was
cut. This is exactly the failure mode `chapters/en/README.md` warns about: a chapter written first
gets claims shaped by the prose.

## A version trap worth naming

The Stanford "Canaries" paper is the most-cited source for the junior-employment story, and **three
different numbers for the same headline fact are in circulation.** They are not interchangeable:

| Figure | Meaning |
|--------|---------|
| 13% | The **November 2025** version — what all the 2025 press quoted |
| 15% | What the *current* paper calls that same July-2025 data vintage, **after a methodology revision** |
| 19% | The **current** headline: data through June 2026 (paper revised 12 Aug 2026) |

The 13% → 15% move is a methodology change, not new data. Citing "13%" as a current finding is wrong.
The chapter uses **19%, dated**, and does not present it as settled.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | AI automation impact knowledge worker employment data 2025 2026 study |anysearch — `<https://www.dallasfed.org/research/economics/2026/0224>` | yes | Surfaced Dallas Fed, PwC, BLS, Stanford |
| 2 | which professional skills have been commoditized by AI 2025 research |anysearch — `<https://www.bls.gov/opub/ted/2025/ai-impacts-in-bls-employment-projections.htm>` | partly | Mostly secondary/blog; the uxtigers "competence has become a commodity" line is a good framing quote but **not** usable as evidence |
| 3 | AI coding assistants impact on software engineer hiring entry level 2025 |anysearch — `<https://digitaleconomy.stanford.edu/news/canariesaug26/>` | yes | Led to Indeed Hiring Lab and the Stack Overflow survey |
| 4 | jobs and skills growing because of AI demand 2025 data |anysearch — `<https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-27.html>` | partly | WEF/BLS/BLS-good; the Facebook group results are noise |
| 5 | Canaries in the Coal Mine / entry-level tech hiring / seniority-biased technological change / Humlum Vestergaard / Yale Budget Lab / AI text detection |subagent (Brave, Bing, Marginalia) — `<https://www.hiringlab.org/2025/07/30/the-us-tech-hiring-freeze-continues/>` | yes | Subagent run; found the counter-evidence summarized below |
| 6 | Direct fetches |web_fetch — `<https://www.hiringlab.org/2025/07/30/experience-requirements-have-tightened-amid-the-tech-hiring-freeze/>` | mixed | PwC 403; Stanford PDF binary-only; Yale Budget Lab empty body; NY Fed chrome-only. All recorded below. |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Fed Reserve Bank of Dallas, *AI is simultaneously aiding and replacing workers, wage data suggest* (Scott Davis, 2026-02-24) |primary (central-bank research, own BLS-derived analysis) — `<https://www.dallasfed.org/research/economics/2026/0224>` | The codified-vs-tacit mechanism; the experience premium; that pay is **not** rising with exposure | yes |
| 2 | U.S. Bureau of Labor Statistics, *AI impacts in BLS employment projections* (2025-03-11) |primary (government statistics) — `<https://www.bls.gov/opub/ted/2025/ai-impacts-in-bls-employment-projections.htm>` | Which occupations are projected to grow despite AI exposure; software developers +17.9% vs 4.0% all-occupations | yes |
| 3 | Stanford Digital Economy Lab, *Canaries in the Coal Mine* (Brynjolfsson, Chandar, Chen), author summary Aug 2026 |primary (research lab, authors' own summary of their paper) — `<https://digitaleconomy.stanford.edu/news/canariesaug26/>` | 22–25 employment ~19% below counterfactual in AI-exposed occupations; no comparable gap for experienced workers; **no economy-wide displacement** | yes |
| 4 | U.S. Census Bureau, CES-WP-26-27, *"You're (not) Hired"* (Lee C. Tucker, 2026-04) |primary (government working paper, administrative data) — `<https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-27.html>` | Early-career (22–24) employment **−12%** in most-exposed quintile over 10 quarters post-ChatGPT; cause is reduced **hiring**, not separations | yes |
| 5 | Indeed Hiring Lab, *The US tech hiring freeze continues* (2025-07-30) |primary (proprietary postings data; Indeed is a commercial party — see caveats) — `<https://www.hiringlab.org/2025/07/30/the-us-tech-hiring-freeze-continues/>` | Software-engineer postings −49% vs Feb 2020; **nearly half the decline predates ChatGPT** | yes |
| 6 | Indeed Hiring Lab, *Experience requirements have tightened* (2025-07-30) |primary (as above) — `<https://www.hiringlab.org/2025/07/30/experience-requirements-have-tightened-amid-the-tech-hiring-freeze/>` | Share of postings requiring 5+ years rose 37%→42%; the same measure **fell** 16%→11% in other occupations | yes |
| 7 | Stanford RegLab, *Hallucination-Free? Assessing the Reliability of Leading AI Legal Research Tools* (peer-reviewed, JELS) |primary — `<https://reglab.stanford.edu/publications/hallucination-free-assessing-the-reliability-of-leading-ai-legal-research-tools/>` | Lexis+ AI and Westlaw AI hallucinate **17%–33%** of the time; vendors' "hallucination-free" claims overstated | yes |
| 8 | METR, Becker/Rush/Barnes/Rein, arXiv:2507.09089 |primary (RCT) — `<https://arxiv.org/abs/2507.09089>` | 16 experienced OSS devs, 246 tasks: forecast −24%, actual **+19% slower** | yes |
| 9 | Perry/Srivastava/Kumar/Boneh, arXiv:2211.03622 (CCS '23) |primary (peer-reviewed) — `<https://arxiv.org/abs/2211.03622>` | Participants with AI wrote **less secure** code and **believed it was more secure** | yes |
| 10 | Schroeder/Roy/Kabbara, arXiv:2507.15821 |primary (preregistered) — `<https://arxiv.org/abs/2507.15821>` | 410 annotators: LLM suggestions raised confidence, changed label distribution — the human loop **rubber-stamps** | yes |
| 11 | Microsoft Research, *The Impact of Generative AI on Critical Thinking* (CHI 2025, n=319) |primary (peer-reviewed; Microsoft is a vendor — flagged) — `<https://www.microsoft.com/en-us/research/publication/the-impact-of-generative-ai-on-critical-thinking-self-reported-reductions-in-cognitive-effort-and-confidence-effects-from-a-survey-of-knowledge-workers/>` | Higher confidence in GenAI → **less** critical thinking; work shifts toward verification, integration, stewardship | yes |

## Counter-evidence (the part that changed the chapter)

Recorded because it bounds the claim. The book's Ch. 02 test — machine-side vs human-side — is applied
to each.

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **NBER WP 33777**, Humlum & Vestergaard (Denmark, 25,000 workers, admin records) — <https://www.nber.org/papers/w33777> | Effects on earnings and hours **precisely null**, ruling out >2%. Employers absorb AI by task reorganisation, not displacement. | Bounds Ch. 01: the chapter must not claim a general wage effect. Cited in the "honest caveats". |
| **NBER WP 31161**, Brynjolfsson/Li/Raymond (*GenAI at Work*, QJE) — <https://www.nber.org/papers/w31161> | In support work, AI gave **+34% to novices** and ~nothing to experts — i.e. AI *compressed* the experience premium. | The single strongest counter-example. The chapter concedes it explicitly; the moat argument must survive it, not ignore it. |
| **Census CES-26-25** (Nov 2025–Jan 2026) — <https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-25.html> | **Only 2% of firms** report AI-related employment decreases; **66% of users** use AI solely to augment. | Keeps the chapter off "AI is replacing everyone". |
| **Indeed, July 2026** — <https://hiringlab.indeed.com/2026/07/08/ai-and-job-postings-from-destruction-to-creation/> | Software development postings **+15% since Feb 2025 vs −7% overall** — more AI-exposed occupations rebounded more. | The chapter's "mirror" claim must be about *composition* (who gets hired), not about the field shrinking. |
| **Canaries, with firm-time fixed effects** — <https://digitaleconomy.stanford.edu/news/canariesaug26/> | The decline becomes significant **only after 2024**, not late 2022. | Dated in the chapter as a post-2024 phenomenon. |
| **Census CES-26-27 itself** — <https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-27.html> | Attributes **up to one quarter** of the early-career decline to monetary-policy shocks, and finds pre-COVID trend shifts. | Stated as attribution uncertainty, not as settled causation. |

## Rejected

| Source | Why not used |
|--------|--------------|
| **GitClear, AI Copilot Code Quality 2025** | Vendor content — GitClear sells code-quality analytics; the page is a lead-capture form. Directionally interesting, not evidence. |
| **DORA / Google Cloud reports** | Vendor-sponsored instrument (gold sponsors include GitHub, GitLab, Datadog). Useful framing, not independent evidence. |
| **Yale Budget Lab, *Evaluating the Impact of AI on the Labor Market*** — <https://budgetlab.yale.edu/research/evaluating-impact-ai-labor-market-current-state-affairs> | **Could not open it.** Empty body to every extractor; print-PDF is image-only; Wayback copy also unretrievable. I have search snippets only ("no discernible disruption"), which is a lead, not a citation. Recorded as an open question below. |
| **NY Fed Liberty Street Economics** (job postings; remote work) | Could not open — navigation chrome only, and Wayback captures are equally chrome-only. The useful claims (vacancy declines began *before* ChatGPT; remote work, not AI, linked to graduate weakness) came from snippets, so they are not cited. |
| **Hosseini & Lichtinger "~9% within six quarters"** (Harvard/HBS) | The number circulates widely but only as **secondary** reporting. SSRN (5425555) and the HBS PDF are both 403. The primary abstract (Verified via Stanford DEL event page) supports only the qualitative shape, not the number. |
| **Stack Overflow 2025 Developer Survey** "almost right" frustration statistic | I could not locate the widely-quoted figure on the pages opened. Do not cite without finding it. |
| **arXiv:2607.17067** (Yu & Moon, AIES 2026) | Real and on-thesis (juniors "losing the productive struggle"), but qualitative, n=14, single country — colour, not support for a number. |

## Open questions

- **Does the junior-employment gap survive a full causal design?** Canaries labels its own results
  "descriptive… not causal estimates"; the gap shrinks when controlling for education. The chapter
  says "the evidence points to" rather than "AI caused".
- **Yale Budget Lab's "no discernible disruption" finding is unread.** If it holds up, it is a direct
  counterweight to the Canaries/Census line and belongs in Ch. 01's caveats or in Ch. 11. Unread is
  not the same as wrong, and it is not cited.
- **Where does the pay question actually land?** No source found a positive pay effect for judgment.
  If one surfaces, Ch. 01 gets stronger; the chapter is written so it does not depend on one.

## Claims downgraded or dropped

- **"Judgment now earns a premium."** Dropped. Survives only as "employment, not pay" — see the
  correction at the top of this file.
- **"AI hallucinates X% of the time" (general).** Narrowed to the legal-tools study, which measured
  it (17–33%) rather than extrapolating.
- **"Entry-level is dying."** Downgraded to a composition claim: postings fell, and half the fall
  predates ChatGPT. The rebound (Indeed, July 2026) is in the caveats.
- **"13% decline."** Dropped for the current, dated 19% with the revision history noted.
