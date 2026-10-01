---
chapter: 5
chapter_file: ch05-cross-domain-thinking.md
researched: 2026-10-01
sources_kept: 7
sources_rejected: 4
---

# Research notes — Ch. 05: Cross-Domain Thinking

Delivers the **no outside** blind spot as a capability. This is the chapter `chapters/en/README.md`
flags as the book's most exposed claim, with a pre-written instruction:

> Ch. 05 must argue the human side instead: *a connection is worth making because someone decided to
> spend time on it, and a model's output arrives with no such cost attached.* Put that way the chapter
> survives a better model — the claim was never that machines cannot connect, only that the connection
> that matters is the one you commit to. **If that argument does not hold up when Ch. 05 is researched,
> the chapter changes, not the sentence.**

## Did the argument hold up? Yes — and better than expected

The research did not merely permit the human-side framing; it **independently supplies it**.

Two findings, in opposite directions, land on the same conclusion:

1. **LLMs fail at far transfer.** Given letter-string analogies, children and adults generalised easily
   to an unfamiliar symbol set; **LLMs did not.**
2. **But LLMs are strong at cross-domain analogy when the frame is handed to them.** Prompted to
   generate cross-domain analogies on biomedical problems, solutions were **90–173% more diverse** and
   novel **over 50% of the time, against as little as 1.6% for baselines.**

Those two together say something precise: the machine's obstacle is not capacity, it is **the
instruction to look outside** — and that instruction has to come from a person who has decided to stop
solving the problem they were asked to solve. That is exactly the contract's sentence, arrived at from
the evidence rather than asserted.

The third finding is what makes the chapter worth reading:

3. **Humans are not naturally good at this either.** The Einstellung effect: a familiar solution blocks
   finding a better one, and it **reduced chess experts' performance to that of players about three
   standard deviations weaker.**

That kills the complacent version of the chapter ("be the human who can step outside") stone dead. We
get stuck too. So the moat is not a capability difference — it is that **someone has to pay for the
reframe, and the machine's answer carries no such cost.** Which is the contract, vindicated.

This matters for the whole book: it is the one blind spot where the machine-side claim would have
expired. The human-side version does not.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | analogical transfer cross-domain reasoning research how scientists make breakthroughs | anysearch | yes | Found Shen/Druckmann/Zou (Stanford) and Nappo & Valente |
| 2 | LLM analogical reasoning far transfer novel problem evaluation study | anysearch | yes | **Key:** Stevenson et al. (TACL) far-transfer failure; ACL findings paper |
| 3 | generative AI reduces creative diversity collective output | anysearch | yes | Ashkinaze et al. — the counter-evidence |
| 4 | GPT-4 creative problem solving novel scientific hypothesis analogy limits | anysearch | partly | Mostly surveys and vendor blogs |
| 5 | Bilalić McLeod Gobet Einstellung chess masters | anysearch | yes | The human-side keystone |
| 6 | Direct fetches | web_fetch | mixed | arXiv and PMC opened in full. **MIT Press (TACL), ScienceDirect, INFORM S, Sage, Cambridge all blocked.** |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Stevenson, Pafford, van der Maas & Mitchell, *Can Large Language Models generalize analogy solving like children can?*, **TACL** (arXiv:2411.02348) — <https://arxiv.org/abs/2411.02348> | primary (peer-reviewed, TACL) | Blind spot 3, machine side: children and adults **easily generalised** analogies to a far-transfer domain; **LLMs did not**, despite matching or beating children in the familiar Latin alphabet | yes |
| 2 | Shen, Druckmann & Zou (Stanford), *Unlocking LLM Creativity in Science through Analogical Reasoning* (arXiv:2605.11258) — <https://arxiv.org/html/2605.11258v1> | primary (arXiv, Stanford; **opened in full**) | Blind spot 3, **and its refutation**: baseline LLMs **mode-collapse** on open-ended solution generation (novel as little as **1.6%** of the time). With cross-domain analogy prompting: diversity **+90–173%**, novel **>50%**. Four biomedical problems implemented with consistent gains. | yes |
| 3 | Bilalić, McLeod & Gobet, *Inflexibility of experts — Reality or myth? Quantifying the Einstellung effect in chess masters*, **Cognitive Psychology** 56(2), 2008 — <https://pubmed.ncbi.nlm.nih.gov/17418112/> | primary (peer-reviewed; PubMed abstract opened, Cognition PDF partially) | **The human-side keystone.** A familiar but non-optimal solution induced the Einstellung effect **even in experts**, cutting performance to roughly that of players **three standard deviations** weaker. Also: the more expert, the less prone — so it is trainable, not fixed. | yes |
| 4 | Bilalić, McLeod & Gobet, *Why good thoughts block better ones: the mechanism of the pernicious Einstellung effect*, **Cognition** 108, 2008 — <https://cognition.aau.at/download/Publikationen/Bilalic/Bilalic_etal_2008a.pdf> | primary (peer-reviewed; PDF opened) | The mechanism: attention is biased toward features associated with the first idea, **away** from features that would suggest a better one — even while the solver believes they are searching for alternatives. Grand Masters were not trapped by the same problems. | yes |
| 5 | Nappo & Valente, *Analogical Reasoning in Science*, Cambridge Elements, 2026 — <https://www.cambridge.org/core/elements/analogical-reasoning-in-science/BA1FC0FCCE9495D030D280077875A986> | primary (Cambridge University Press scholarly Element; page opened, **body paywalled**) | Orientation only: retrieving an analogue as a problem-solving tool "occurs in virtually all fields of scientific research, ranging from physics…" | yes |
| 6 | Ashkinaze, Mendelsohn, Qiwei, Budak & Gilbert, *How AI Ideas Affect the Creativity, Diversity, and Evolution of Human Ideas* — <https://arxiv.org/abs/2401.13481> | primary (arXiv; accepted at ACM Collective Intelligence 2025) | **Counter-evidence:** 800+ participants, 40+ countries. High AI exposure did **not** raise individual creativity but did **increase** collective idea diversity — the opposite direction to Ch. 03's finding | yes |
| 7 | Jiang et al., *Artificial Hivemind*, NeurIPS 2025 — <https://neurips.cc/virtual/2025/poster/121421> | primary (peer-reviewed) | Cross-reference to Ch. 02: baseline convergence is the default the analogy work has to overcome | yes |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Shen et al.** (AR) | LLMs *can* do cross-domain transfer: +90–173% diversity, >50% novelty on real biomedical problems. Undercuts "machines can't step outside the frame." | The chapter's central concession, and it is what *forces* the human-side framing. Adopted: the machine is capable; it needs the frame to be **given**. The cost is on whoever gives it. |
| **Stevenson et al.** (TACL) | LLMs fail far transfer where children succeed. | Adopted as the machine-side statement, **and flagged as the claim most likely to expire.** The chapter does not rest on it. |
| **Bilalić et al.** | The Einstellung effect is weaker in greater experts — i.e. frame-blindness is *trainable*, not a fixed human advantage. | Strengthens the chapter: the moat is a practice, not a birthright. It also means the skill is real work, which is the claim. |
| **Ashkinaze et al.** | High AI exposure **increased** collective idea diversity — contradicting Ch. 03's "AI homogenises" line. | Recorded honestly. The two studies measure different things (Ch. 03: stories with the same task; here: divergence under exposure in a dynamic design). The chapter does not claim AI always homogenises; it cites this as evidence the effect is context-dependent. |
| **Nappo & Valente** | Analogy is routine in science, not exceptional — which argues against treating it as a rare human gift. | Adopted. The chapter frames cross-domain thinking as a *practice*, not a talent, consistent with the Einstellung finding. |
| Grand Masters in Bilalić et al. (Cognition) | The very best were **not** trapped by the Einstellung problems at all. | Cited: it shows the trap is escapable, which is the chapter's practical promise. |

## Rejected

| Source | Why not used |
|--------|--------------|
| **MIT Press / TACL landing page** for Stevenson et al. — <https://direct.mit.edu/tacl/article/doi/10.1162/TACL.a.614/136430/> | Cloudflare 403. Used the arXiv version of the same paper (same authors, same title), which was opened. |
| **INFORMS, *Can LLMs Aid Analogical Reasoning for Strategic Decisions?*** — <https://pubsonline.informs.org/doi/10.1287/stsc.2025.0426> | Cloudflare 403. Directly on-topic (LLM vs human analogical reasoning in strategy) and would be the strongest addition; could not read it, so it is not cited. Logged as an open question. |
| ScienceDirect (Yang et al., *Cross-domain analogical reasoning ability…*), Sage, Springer | All Cloudflare-blocked. |
| Vendor/blog content: Substack on AlphaEvolve, LinkedIn posts on cross-domain analogies, Medium on design fixation | Marketing and blog framing. The primary arXiv papers are cited instead. |
| DeepMind *Co-Scientist* blog and similar vendor announcements | Corporate blog. Interesting and real, but not an independent measurement; the chapter's claim does not need it. |
| *Sparks of AGI* (Bubeck et al.) | 2023 model-capability claims, exactly the kind the book's Ch. 02 rule warns against (a moving target, tied to one model generation). |

## Open questions

- **The Einstellung numbers are read from the PubMed abstract**, not the paper body. "Three standard
  deviations" is the authors' own phrasing in the abstract.
- **The INSCHOOL/INFORMS study on LLM vs human analogical reasoning in strategy is unread** (403). It
  could be the best single source for this chapter — it compares the two directly on the same task.
  Recorded as a lead.
- **Is the LLM far-transfer failure a durable limit?** Stevenson et al. is 2024–25. This is the
  chapter's most expirable citation and it is used only as a supporting, dated observation.

## Claims downgraded or dropped

- **"AI cannot think across domains."** Dropped — refuted by Shen et al. (+90–173% diversity when
  prompted).
- **"Humans can step outside frames and machines can't."** Dropped — the Einstellung effect shows
  humans get trapped, severely, and the trap is measured in standard deviations of skill.
- **"Cross-domain thinking is a rare gift."** Dropped — Nappo & Valente show it is routine across
  scientific fields; the chapter treats it as a practice.
- **"AI homogenises creative output" (as a general law).** Softened — Ashkinaze et al. found the
  opposite under some conditions, and Ch. 03 already stated the effect is context-dependent.
