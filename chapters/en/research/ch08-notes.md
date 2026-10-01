---
chapter: 8
chapter_file: ch08-prompting-as-thinking.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 5
---

# Research notes — Ch. 08: Prompting as Thinking

Closes Part III. Delivers *the interface **with** a model* — "turning a search into a briefing"
(`chapters/en/README.md`).

Boundary constraints, from `chapters/en/README.md`:

> 07 ↔ 08: 07 is judgement exercised **outside** a model's presence. 08 is the interface **with** one.
> 08 without 07 produces a well-briefed person who cannot decide anything; 07 without 08 wastes the tool.

> 08 ↔ 09–10: 08 is the **instrument** (how to ask). 09 is **accumulation**. 10 is **action**.

Ch. 07 closes by naming 08 as the chapter that **assumes** it. So this chapter must not re-teach the
adversarial pass or the pre-committed falsifier — it builds on them.

## The trap this chapter had to avoid

This is the chapter most likely to become a **tips listicle** — "use these 12 prompt hacks" — which
would be both bad writing and a betrayal of the book's stance (every other chapter argues that the
obvious remedy fails). It would also be obsolete within a year.

The research resolved this so decisively that avoiding the trap became the chapter's **thesis**:

| Finding | What it kills |
|---------|---------------|
| **76-point accuracy swings** from meaning-preserving format changes (Sclar) | The idea that a prompt can be *optimally worded*. Wording is unstable, so optimisation on wording is chasing noise. |
| **CoT helps mainly on math/logic** (Sprague) | The single most-repeated technique in circulation ("think step by step") is **conditional**, not universal. |
| **58 techniques catalogued** (Schulhoff) | The listicle, by arithmetic. Nobody remembers 58 items; needing the manual means you are not thinking. |
| **Position determines whether information is used at all** (Liu) | "Write a better prompt" is the wrong unit. *Structure* beats wording. |

The synthesis: **what is stable is not the wording, it is the thinking.** The commander's advantage over
the searcher is intent, context and standards — none of which are phrasing.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | prompt sensitivity spurious features format performance variance | anysearch | yes | **Best hit:** Sclar et al. FormatSpread |
| 2 | chain of thought meta-analysis when does it help | anysearch | yes | Sprague et al. — the decisive conditional finding |
| 3 | prompt engineering techniques systematic survey | anysearch | yes | Schulhoff et al., 58 techniques |
| 4 | lost in the middle long context retrieval position | anysearch | yes | Liu et al. |
| 5 | sycophancy language models Anthropic | anysearch | already have | Sharma et al. — **already used in Ch. 02**; cross-referenced, not re-verified |
| 6 | how people actually use ChatGPT real-world logs | anysearch | yes | Ma et al., WildChat Australia |
| 7 | Why Johnny can't prompt (CHI 2023) | anysearch | **no** | ACM DL — Cloudflare 403. Would have been excellent (non-experts' broken mental models). Recorded as a gap. |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Sclar, Choi, Tsvetkov & Suhr, *Quantifying Language Models' Sensitivity to Spurious Features in Prompt Design*, **ICLR 2024** — <https://arxiv.org/abs/2310.11324> | primary (peer-reviewed; **arXiv abstract page opened**) | **The chapter's key number.** Widely used open-source LLMs are "extremely sensitive to subtle changes in prompt formatting in few-shot settings, with performance differences of **up to 76 accuracy points**" (LLaMA-2-13B). Sensitivity "remains even when increasing model size, the number of few-shot examples, or performing instruction tuning." Format performance "only weakly correlates between models" — which "puts into question the methodological validity of comparing models with an arbitrarily chosen, fixed prompt format" | yes |
| 2 | Sprague et al., *To CoT or not to CoT?*, **ICLR 2025** — <https://arxiv.org/abs/2409.12183> | primary (peer-reviewed; **arXiv abstract page opened**) | CoT "gives strong performance benefits primarily on tasks involving math or logic, with much smaller gains on other types of tasks." On MMLU, "directly generating the answer without CoT leads to almost identical accuracy as CoT **unless the question or model's response contains an equals sign**." Much of CoT's gain is improved symbolic execution — "but it underperforms relative to using a symbolic solver" | yes |
| 3 | Liu et al., *Lost in the Middle: How Language Models Use Long Contexts*, **TACL 2024** — <https://arxiv.org/abs/2307.03172> | primary (peer-reviewed; **arXiv abstract page opened**) | "Performance is often highest when relevant information occurs at the **beginning or end** of the input context, and significantly degrades when models must access relevant information in the **middle** of long contexts, **even for explicitly long-context models**." Position is not a detail — it determines whether the information is used | yes |
| 4 | Schulhoff et al., *The Prompt Report: A Systematic Survey of Prompt Engineering Techniques* — <https://arxiv.org/abs/2406.06608> | primary (large systematic survey; **arXiv abstract page opened**) | "33 vocabulary terms, a taxonomy of **58** LLM prompting techniques, and 40 techniques for other modalities," plus "a meta-analysis of the entire literature on natural language prefix-prompting." Cited for the *scale* of the technique space, which is the argument against the listicle | yes |
| 5 | Ma, Gero, Canonne, Jin & Thilakarathna, *How People Use ChatGPT in Australia: A WildChat Analysis*, **OzCHI '26** — <https://arxiv.org/html/2609.28990v1> | primary (peer-reviewed HCI, accepted; **full HTML opened**) | 37,845 real Australian ChatGPT conversations. Usage is "strongly **action-oriented** and comparatively **work-oriented**", with "most interactions classified as **doing** and a majority of conversations classified as work-related". Also documents "a growing presence of self-expression over time" | yes |
| 6 | Sharma et al., *Towards Understanding Sycophancy in Language Models* — <https://arxiv.org/abs/2310.13548> | primary (peer-reviewed; **opened and verified in Ch. 02's research**) | Cross-reference, not re-verified: "when a response matches a user's views, it is more likely to be preferred," and both humans and preference models "prefer convincingly-written sycophantic responses over correct ones a non-negligible fraction of the time." Why "it will agree with you" is a briefing constraint | yes |

## Verification depth — stated honestly

Sources **1, 2, 3 and 4 were verified at abstract level**, not full text: I opened each paper's official
arXiv page and every figure I quote (76 points, the equals-sign finding, beginning/end/middle, 58
techniques) comes from the authors' own abstract on that page. That is a real source opened, and it is
materially stronger than a search snippet — but it is **not** the same as reading the paper, and none of
the numbers here depends on a detail buried in a table I did not see.

Source **5 was read in full** (HTML body). Source **6** was opened in full during Ch. 02.

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Schulhoff et al.** (source 4) | The 58-technique survey is, in part, a **catalogue of things that work**. If techniques did reliably transfer, the listicle would be defensible and this chapter's thesis weak. | Adopted as a tension rather than resolved: the survey documents a large, real body of technique. The chapter's claim is narrower and about the reader — the space is too large and too format-sensitive to hold as memorised rules, so the transferable thing is the thinking, not the catalogue. I cite the survey for the **size** of the space and say plainly that it also contains technique. |
| **Sprague et al.** (source 2) | Cuts against the chapter's own advice in one direction: if CoT is near-useless outside math/logic, then a reader who has been adding "think step by step" everywhere has been wasting tokens — but also, CoT does **not** hurt, so the advice is low-stakes. | Kept the honest version: the finding is that CoT is **selective**, and the chapter tells the reader to *stop* using it as ritual. I did not overstate this into "CoT is bad" — the paper says it helps and is worth applying selectively. |
| **Ma et al.** (source 5) | The "commander" framing implies people are mostly *delegating with intent*. The data show heavy action-oriented use — but the same paper finds growing **self-expression** use, which is not commanding anything. | Adopted: the chapter states that most use is *doing*, and does not claim most use is *well-briefed*. The data support "people treat it as an action tool"; they do not support "people are good at briefing it." |
| **Sclar et al.** (source 1) | If performance swings 76 points on formatting, then maybe the whole enterprise of deliberate prompting is hopeless, and the honest advice is "results are noise." | This is the strongest challenge and the chapter addresses it head-on: the finding is a reason to stop optimising **wording**, and a reason to care instead about the things that are stable — intent, context, structure, verification. It also means any single cherry-picked prompt success story is close to meaningless, which the chapter says. |

## Rejected

| Source | Why not used |
|--------|--------------|
| Prompting-guide sites, IBM/Splunk explainers, promptingguide.ai, learnprompting.org, Reddit r/PromptEngineering | Practitioner content. Used only as evidence of what the *popular* advice is (so the chapter can test it), never as a source for a claim. |
| "Best prompts / 100 prompts that changed my life" listicles | The genre the chapter argues against. |
| OpenAI, *How people are using ChatGPT* (2025) — <https://openai.com/index/how-people-are-using-chatgpt/> | **403, could not open.** Would have been a stronger usage dataset than the Australian subset and a useful counterweight. Recorded as a gap rather than cited from description. |
| Zamfirescu-Pereira et al., *Why Johnny Can't Prompt* (CHI 2023) | **Cloudflare 403 on ACM DL.** The single most relevant missing source: non-experts' mental models of prompting, which is exactly this chapter's subject. Recorded as a gap. |
| Anthropic's sycophancy blog post | Secondary restatement of source 6, which is already cited. |

## Open questions

- **The two most useful sources for this chapter could not be opened**: *Why Johnny Can't Prompt* (ACM,
  403) and OpenAI's usage study (403). The chapter therefore argues about prompting without direct
  evidence on how non-experts actually prompt. That is a real gap and it is disclosed in the caveats.
- **The sensitivity finding is from 2023–24 open models** (LLaMA-2-13B and peers), not current frontier
  models. Sensitivity "remains even when increasing model size" was true of the models tested; whether it
  holds for the models the reader uses today is not established by this paper.
- **Ch. 09 must not re-teach this chapter** — accumulation (notes, memory, a second brain) is new
  material; the instrument is assumed.

## Claims downgraded or dropped

- **"There is a right way to word a prompt."** Dropped as the chapter's premise and inverted: wording is
  demonstrably unstable, so the chapter optimises for thinking instead.
- **"Always tell the model to think step by step."** Rejected as a universal rule; replaced with the
  conditional finding (math/logic yes, elsewhere nearly no difference).
- **"Prompt engineering is 90% about the prompt."** Not claimed. What the evidence supports is that
  phrasing is fragile and the stable levers are elsewhere.
- **"People are using AI well."** Not claimed. The WildChat data support *what* people do, not that they
  do it well, and the chapter does not smuggle in the second claim.
