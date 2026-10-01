---
chapter: 11
chapter_file: ch11-the-cost-of-offloading.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 5
---

# Research notes — Ch. 11: The Cost of Offloading

**The hardest chapter in the book, and the contract says so.** From `chapters/en/README.md`:

> 09 and 10 build the system; 11 prices it. **11 is the only chapter that argues against the book's own
> advice**, and it must not read as a disclaimer. It has to be as concrete as the chapters it qualifies:
> **a worked case where offloading cost someone a capability they did not notice losing.** 11 does not
> retract 09–10 — it says which parts of the system you must keep doing by hand. **If 11 could be
> summarised as "but be careful", it has failed.**

And from 11 ↔ 12: "11 is the **cost** of offloading; 12 is the **response** to it. 11 diagnoses what
decays."

Two debts inherited from earlier chapters:
- **Ch. 09** quarantined a correlational AI/critical-thinking study and said the causal question "belongs
  to Chapter 11, and 11 will have to do better than a correlation."
- **Ch. 10** said the cost thesis belongs here.

## What the research changed

The chapter could easily have been "offloading dulls you — be careful." That fails the contract twice: it
is a disclaimer, and it is unearned.

What the evidence forced instead is a **specific and surprising shape**: the thing that decays is not the
skill you practised, and not the thing you offloaded. **It is the cognitive skill underneath the task**,
and it decays while your physical skill stays intact — which is exactly why nobody notices.

Three findings, all from **full text** (see the verification note — this chapter is the best-sourced in
the book):

**1. Bainbridge, 1983** — the origin of the whole field. The crucial sentence, in full:

> Unfortunately, physical skills deteriorate when they are not used, particularly the refinements of
> gain and timing. This means that a formerly experienced operator who has been monitoring an automated
> process may now be an inexperienced one.

And the mechanism that makes it invisible:

> the operator needs to be **more rather than less skilled**, and less rather than more [monitoring].

The paradox in one line: **automation removes the practice and increases the demand for the skill at the
same time.** The operator is deskilled by the very arrangement that requires their skill for the
emergencies that remain.

**2. Casner et al., 2014** — the empirical test of Bainbridge, and the chapter's keystone because it
**splits the skills**:

> We found pilots' instrument scanning and manual control skills to be **mostly intact**, even when
> pilots reported that they were infrequently practiced. However, when pilots were asked to manually
> perform the **cognitive** tasks needed for manual flight... we observed more frequent an[omalies].

This is the finding the chapter is built on. **The hand stays; the head goes.** The physical skill you
practised is well retained. The cognitive work underneath it — recalling sequence, tracking state,
visualising position, performing mental calculation, recognising abnormality — is what degrades, and it
degrades in proportion to how much you stayed engaged in supervising the automation:

> the retention of cognitive skills needed for manual flying may depend on the degree to which pilots
> remain **actively engaged in supervising the automation.**

That is the design rule for the whole chapter, stated by NASA researchers about pilots in 2014.

**3. Dahmani & Bohbot, 2020** — GPS and spatial memory. This is the source that **answers Ch. 09's
challenge** ("better than a correlation"), because the authors explicitly tested the reverse-causal
story:

> those who used GPS more **did not do so because they felt they had a poor sense of direction**,
> suggesting that extensive GPS use led to a decline in spatial memory **rather than the other way
> around**.

And it is longitudinal as well as cross-sectional: 50 drivers measured, then 13 retested three years
later, with greater GPS use predicting "a steeper decline in hippocampal-dependent spatial memory." The
authors' own caution is real and is quoted in the chapter:

> we caution against any strong conclusions as spurious correlations are possible.

**4. Kosmyna et al., 2025 (MIT)** — the closest thing to AI-specific evidence, and it has the shape that
makes the chapter concrete: EEG differences across LLM / search / brain-only groups, weakest connectivity
in the LLM group, **reduced self-reported ownership of the essays**, and LLM users "struggled to
accurately quote their own work."

**5. The published critique of that study** — and this is what makes the chapter honest rather than
convenient. A comment paper raises concerns about "the limited sample size", "reproducibility of the
analyses", "methodological issues related to the EEG analysis", "inconsistencies in the reporting of
results", and "limited transparency". **I am citing the study and its rebuttal together**, which is the
only defensible way to use a viral preprint.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | MIT brain on ChatGPT cognitive debt EEG | anysearch | yes | Kosmyna et al. + the critique |
| 2 | Bainbridge ironies of automation skill decay | anysearch | yes | **Full PDF extracted** |
| 3 | habitual GPS use spatial memory hippocampus | anysearch | yes | **Full PDF extracted** — the reverse-causality test |
| 4 | aviation deskilling manual flying skills decay | anysearch | yes | **Casner full PDF extracted** |
| 5 | abstract/metadata retrieval | OpenAlex + Crossref + arXiv API | yes | For sources not openly readable |
| 6 | automated PDF extraction | `pypdf` via pip `--target` | yes | **How I got full text** — see below |

## Verification method — the strongest in the book

Earlier chapters had to settle for abstract-level sourcing because PMC, PubMed, Europe PMC and the
publishers blocked automated access. **This chapter did not settle.**

I installed `pypdf` into a scratch directory (`pip install --target`, since the system Python is
externally managed) and extracted the **full text** of three openly-hosted PDFs, then read the actual
passages:

| Source | How obtained | Depth |
|--------|--------------|-------|
| Bainbridge 1983 | `ckrybus.com/static/papers/Bainbridge_1983_Automatica.pdf` | **Full text, 5 pages**, quotes taken from the body |
| Casner et al. 2014 | `gwern.net/doc/technology/2014-casner.pdf` | **Full text, 11 pages**, quotes taken from the results and conclusion |
| Dahmani & Bohbot 2020 | `bic.mni.mcgill.ca/.../Dahmani_Bohbot_GPS_Scientific_Reports2020.pdf` (author copy of an OA Nature paper) | **Full text, 14 pages**, quotes from abstract, results and discussion |

For Kosmyna et al. and its critique, the **abstract text** was retrieved via OpenAlex by DOI
(`10.48550/arxiv.2506.08872` and `10.48550/arxiv.2601.00856`) — the paper is a preprint, not
peer-reviewed, which is part of what the critique is about.

**Note the asymmetry, because it is the point of the chapter:** three of the five findings come from
papers published **1983, 2014 and 2020** — before the thing this book is about. The field has known for
forty years, with full-text evidence, that automating a task costs the cognitive skill underneath it and
preserves the physical skill on top. **The AI debate did not discover this. It rediscovered it.**

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Bainbridge, *Ironies of Automation*, **Automatica** 19(6), 1983 — <https://doi.org/10.1016/0005-1098(83)90046-8> | primary (peer-reviewed; **full text read**) | "physical skills deteriorate when they are not used, particularly the refinements of gain and timing" → a formerly experienced operator "may now be an inexperienced one." And the paradox: the operator "needs to be more rather than less skilled" | yes |
| 2 | Casner, Geven, Recker & Schooler, *The Retention of Manual Flying Skills in the Automated Cockpit*, **Human Factors** 56(8), 2014 — <https://doi.org/10.1177/0018720814535628> | primary (peer-reviewed, 16 airline pilots, 747-400 simulator; **full text read**) | **The keystone.** Instrument scanning and manual control skills "mostly intact" despite infrequent practice; but the **cognitive** tasks of manual flight showed more frequent anomalies, and retention "may depend on the degree to which pilots remain actively engaged in supervising the automation" | yes |
| 3 | Dahmani & Bohbot, *Habitual use of GPS negatively impacts spatial memory during self-guided navigation*, **Scientific Reports** 10, 2020 — <https://doi.org/10.1038/s41598-020-62877-0> | primary (peer-reviewed, open access; **full text read**) | Answers the causal objection: those who used GPS more "did not do so because they felt they had a poor sense of direction," suggesting use *led* to decline "rather than the other way around." Longitudinal follow-up (n=13, 3 years): greater use → "steeper decline in hippocampal-dependent spatial memory" | yes |
| 4 | Kosmyna et al., *Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task*, arXiv:2506.08872, 2025 — <https://doi.org/10.48550/arxiv.2506.08872> | **preprint — not peer-reviewed** (54 participants sessions 1–3, 18 in session 4; **abstract via OpenAlex**) | EEG connectivity weakest in the LLM group; "cognitive activity scaled down in relation to external tool use"; self-reported **ownership of essays lowest in the LLM group**; LLM users "struggled to accurately quote their own work" | yes (flagged as preprint) |
| 5 | *Comment on: Your Brain on ChatGPT*, arXiv:2601.00856, 2025 — <https://doi.org/10.48550/arxiv.2601.00856> | primary (published critique, **abstract via OpenAlex**) | The counterweight, cited alongside source 4: concerns about "the limited sample size", "reproducibility of the analyses", "methodological issues related to the EEG analysis", "inconsistencies in the reporting of results", "limited transparency" | yes |
| 6 | Roth, Robbert & Straus, *On the sunk-cost effect in economic decision-making*, **Business Research** 7, 2014 — <https://doi.org/10.1007/s40685-014-0014-8> | primary (meta-analysis, 98 effect sizes; **abstract via OpenAlex + Crossref**) | Cross-reference from Ch. 10: the pull to continue is "contingent on the respective decision type" and "attenuated by time" — which is how you notice the cost arriving | yes |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **The Comment (source 5)** | The single most important counterweight in this chapter. It attacks the AI-specific evidence on **sample size, reproducibility, EEG methodology, reporting inconsistencies, and transparency.** If those hit, the most quotable AI finding in the chapter is unsafe. | **Adopted, prominently.** The chapter cites the study *and* the critique together and tells the reader the AI evidence is a viral preprint with published methodological objections. Crucially, the chapter does **not** rest on it — the load-bearing evidence is Bainbridge/Casner/Dahmani, which are peer-reviewed with full text available. |
| **Casner et al. 2014** | Cuts against the chapter's own fear. Their headline is that instrument scanning and manual control were **"mostly intact"** — i.e. the physical skill did *not* decay. A careless reading gives "no cost there." | Adopted as the *structure* of the chapter: the finding is not "everything decays", it is that **physical and cognitive skills decay differently**, and the cognitive one is the one you don't notice. Casner is the chapter's keystone precisely because he is partly reassuring. |
| **Dahmani & Bohbot 2020**, own caution | The authors write "we caution against any strong conclusions as spurious correlations are possible," and the longitudinal n is 13. | Quoted in the chapter. The effect is presented as "suggest(s) that GPS use may cause a decline", with the small follow-up sample disclosed. |
| **Bainbridge 1983** | Contextually awkward: her paper is about *industrial process control* and her main worry is vigilance failures and the operator's role in abnormal conditions — not about knowledge workers losing craft. | Adopted with the context stated. The chapter says plainly where the evidence comes from (factories, cockpits, cars) and that applying it to *your* work is an extrapolation. |
| **The 2025 correlational AI study** (from Ch. 09) | Ch. 09 quarantined it and said 11 "will have to do better than a correlation." | **Responded to directly.** Ch. 11 does not re-run the correlation. It supplies the peer-reviewed, full-text, mechanism-level evidence (Casner's skill split; Dahmani's reverse-causality test) and says the correlation was the weakest link, now replaced. |

## Rejected

| Source | Why not used |
|--------|--------------|
| Aviation news coverage, Flight Safety Foundation anecdote ("43% of pilots said their manual flying skills had declined"), Reddit/LinkedIn/Facebook discussion | Self-report and journalism. The Casner study is the peer-reviewed version and I read it in full. |
| SJSU master's thesis on manual flight skill | A thesis, not peer-reviewed; superseded by Casner for the same claims. |
| Medium explainers on Bainbridge, `ufried.com` blog on "AI and the ironies of automation", gsdn.live on cognitive debt | Practitioner commentary. Used to find the primary sources, never cited. |
| *Impact of automation level on airline pilots' flying performance* (Applied Ergonomics, 2024) | Relevant (higher automation → better performance, lower vigilance) and I would have liked it, but it is ScienceDirect and blocked. Recorded as a gap rather than cited from description. |
| Time magazine and press coverage of the MIT study | Journalism about the preprint. The preprint and its critique are cited directly. |

## Open questions

- **The AI-specific evidence is the weakest evidence in the chapter**, and that inversion is deliberate:
  the 40-year-old evidence is stronger. The chapter says so. If a reader remembers one AI-specific number
  from Ch. 11, it should be the one from the study whose critique is printed next to it.
- **The critique's full text was not read** — only its abstract. Its five concerns are quoted at abstract
  level, which is enough to establish that the objections exist and are serious.
- **Ch. 12 inherits this diagnosis.** Per the boundary: 12 is the **response** — decay, plateaus, and
  keeping trained the thing that decays. 12 must open by assuming this case, not restating it.

## Claims downgraded or dropped

- **"AI is making us dumber."** Dropped entirely. The chapter's claim is narrower and older: automating a
  task costs the cognitive skill underneath it while preserving the physical skill on top.
- **"Skill decays uniformly."** Rejected — Casner's split is the finding.
- **"The MIT study proves cognitive debt."** Softened to a flagged preprint with published
  methodological objections, cited alongside its critique.
- **"GPS shrinks your hippocampus."** Softened to the authors' own hedge ("may cause", small longitudinal
  sample, "spurious correlations are possible").
- **"This is a new problem."** Inverted, and it became the chapter's best line: the field has known since
  1983. The AI era did not discover deskilling; it rediscovered it — and this time it applies to work
  that used to feel like thinking.
