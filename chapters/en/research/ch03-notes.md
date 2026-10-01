---
chapter: 3
chapter_file: ch03-taste-beyond-average-beauty.md
researched: 2026-10-01
sources_kept: 8
sources_rejected: 5
---

# Research notes — Ch. 03: Taste

The chapter delivers the **no preference** blind spot from Ch. 02 as a capability: deciding what is
*good*, inside one domain, against the consensus. Its job is to show a *consequence* the previous
chapter did not — the chapter's boundary note in `chapters/en/README.md` says explicitly that 03 is
taste ("knowing that two things belong together because they share a quality, inside one domain") and
must not drift into 05's cross-domain transplant or 04's resonance.

## What the research changed

**The chapter nearly argued the wrong thing.** The instinctive version of "AI has no taste" is *"and
that's why AI output looks generic, and here's the proof: everything AI makes looks the same now."*
The research says that story is only half true, and the more interesting half points the other way:

- Web design converged **before generative AI existed** — a 44% drop in layout distance between 2010
  and 2019, driven by frameworks, libraries and templates, with no model in the loop.
- The mechanism is older than the tools: **beauty-in-averageness** — humans rate prototypical, fluently
  processed things as more attractive, regardless of quality.
- The Science Advances experiment found AI raised *individual* creativity ratings while making stories
  **more similar to each other**.

So "AI makes things generic" is not the finding. The finding is: **humans and models share the same
attractor — the average — and taste is the deliberate act of leaving it.** That reframing is what the
chapter is built on, and it is stronger because it does not depend on models staying bad.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | AI generated design homogenization visual sameness convergence aesthetic market study | anysearch | yes | Surfaced the CHI 2021 web-homogenisation study and the fluency/averageness mechanism |
| 2 | how is taste acquired expertise development aesthetic judgment deliberate practice research | anysearch | partly | Mostly philosophy/blog. Ericsson 1993 located but not used directly — see Rejected |
| 3 | generative AI reduces creative diversity collective output study 2025 2026 | anysearch | yes | **Best hit:** Doshi & Hauser, Science Advances — the chapter's keystone |
| 4 | average beauty AI generated content generic style research homogenization culture | anysearch | yes | Cornell/CHI cultural-homogenisation study; Declos aesthetic bias |
| 5 | Direct fetches | web_fetch | mixed | PMC, arXiv, Cornell Chronicle, EurekAlert-adjacent sources opened. **ACM DL, Sage, Springer, Oxford all Cloudflare-blocked**; PubMed demanded cookies |
| 6 | Mirrors and alternates for blocked sources | anysearch + web_fetch | partly | Recovered the Goree numbers via a scholarly summary (Kolko) rather than the ACM page itself |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | Doshi & Hauser, *Generative AI enhances individual creativity but reduces the collective diversity of novel content*, **Science Advances** 10(28), 2024 — <https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/> | primary (peer-reviewed, open access, n≈293 writers) | The chapter's core mechanism: AI ideas made stories **more creative, better written and more enjoyable — especially for less creative writers** — while AI-assisted stories were **more similar to each other**. The "social dilemma" framing is the authors' own. | yes |
| 2 | Goree, Doosti, Crandall & Su, *Investigating the Homogenization of Web Design*, **CHI 2021** — <https://dl.acm.org/doi/10.1145/3411764.3445156> | primary (peer-reviewed; ACM page **not opened** — see below) | Convergence is not an AI phenomenon: layout distance between popular sites **fell 44% (2010–2019)**, with library adoption strongly correlated with visual similarity | yes (numbers via a scholarly summary — see caveats) |
| 3 | Kolko, *paper summary: Investigating the Homogenization of Web Design* (2025) — <https://www.jonkolko.com/phd/writing/25-07-12-homogenization-of-web-design> | secondary (a design scholar's detailed reading) | The 44% figure, the 227,000 screenshots / 10,000 sites sample, the two inflection points (mobile, then frameworks), and the authors' own conclusion | yes |
| 4 | Chen, Song, Zheng, Jing, Hansen & Sun, *Understanding Design Fixation in Generative AI* — <https://arxiv.org/abs/2502.05870> | primary (arXiv preprint; **not peer-reviewed** — flagged) | GenAI exhibits **design fixation**: it limits its own ability to produce novel, diverse outcomes; the feedback loop where creators absorb AI patterns and prompt for more of the same | yes |
| 5 | Agarwal, Naaman & Vashistha, *AI Suggestions Homogenize Writing Toward Western Styles…*, arXiv:2409.11360 (CHI 2025) — <https://arxiv.org/abs/2409.11360> | primary (arXiv; accepted at CHI 2025) | Homogenisation has a **direction**: a Western-centric model pushed Indian writers toward Western norms; "altering not just what is written but also how it is written" | yes |
| 6 | Cornell Chronicle, *AI suggestions make writing more generic, Western* (2025-04-28) — <https://news.cornell.edu/stories/2025/04/ai-suggestions-make-writing-more-generic-western> | secondary (university press release) — used only for the concrete figures and the authors' quotes | n=118 (half US, half India); Indians kept **25%** of suggestions vs Americans' **19%** — and had to correct more, so their productivity gain was smaller. The pizza/Christmas and Shah Rukh Khan→Shaquille O'Neal examples. | yes |
| 7 | Reber, Schwarz & Winkielman, *Processing Fluency and Aesthetic Pleasure*, **Personality and Social Psychology Review** 8(4), 2004 — <https://pubmed.ncbi.nlm.nih.gov/15582859/> | primary (peer-reviewed review; abstract opened, full PDF **not opened**) | The mechanism: aesthetic pleasure is a function of processing fluency — the more fluently something is processed, the more positive the evaluation | yes (abstract only — see caveats) |
| 8 | Jiang et al., *Artificial Hivemind*, NeurIPS 2025 — <https://neurips.cc/virtual/2025/poster/121421> | primary (peer-reviewed, best paper) | Cross-reference back to Ch. 02: models converge, and are **least calibrated to human ratings exactly where annotators disagree** — which is where taste lives | yes |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Doshi & Hauser 2024** — <https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/> | AI-assisted writing was rated **more creative** by judges, with the biggest gains for the *least* creative writers. Undercuts "taste is what AI can't do". | The chapter's central concession. It is why the claim is not "AI makes worse work" but "AI moves everyone toward the same centre". The individual gain is real *and* the collective loss is real — the authors call it a social dilemma, and the chapter uses their framing. |
| **Goree et al. 2021** — <https://dl.acm.org/doi/10.1145/3411764.3445156> | The web converged with **no generative AI involved**. So homogenisation is not evidence about models. | Adopted, not resisted. It is the reason the chapter relocates the claim from "AI causes sameness" to "the average is an attractor, and the machine sits in it". A stronger and less dated argument. |
| **Reber et al. 2004** — <https://pubmed.ncbi.nlm.nih.gov/15582859/> | Fluency *is* an aesthetic good — average things are genuinely pleasing. So "average" is not simply bad. | The chapter says this plainly rather than pretending average is worthless. It is why the claim is about *choosing* to leave the average, not about the average being a defect. |
| **Chen et al. 2025** (design fixation) | Frames fixation as a **GenAI property** — i.e. the model has a taste problem. | Weaker than the chapter needs: preprint, and it partly contradicts the Goree finding that fixation predates the tools. Used as a mechanism, not as proof that AI is the cause. |

## Rejected

| Source | Why not used |
|--------|--------------|
| **ACM DL page for Goree et al.** — <https://dl.acm.org/doi/fullHtml/10.1145/3411764.3445156> | **Could not open** — Cloudflare challenge on both the abstract and the fullHtml route. The 44% figure is taken from a scholarly summary (Kolko) that quotes the paper's own conclusion, and the chapter attributes it that way. |
| **Sage / PubMed / Springer / Oxford pages for Reber and Declos** | All Cloudflare- or cookie-blocked. Reber's abstract was reachable on PubMed; the full text is not cited beyond what the abstract states. |
| **Declos, *AI and Aesthetic Bias*, Journal of Aesthetics and Art Criticism 84(2), 2026** — <https://academic.oup.com/jaac/article/84/2/218/8661496> | Could not open (Cloudflare). On-thesis and would strengthen the "models privilege certain aesthetics" claim, but a title and abstract fragment are not a source. Not cited. |
| Vendor/blog content: Kompozy, saschb2b, Fazer, Medium "UX and the Aesthetics of AI", Creative AI Magnifier | Marketing and blog content. Many repeat the same handful of primary findings without attribution. The primary papers are cited instead. |
| Ericsson, Krampe & Tesch-Römer, *The Role of Deliberate Practice* (1993) | Real and respected, but about **skill acquisition through practice**, not about **judgement/taste**. Using it would smuggle in a claim the paper does not make about aesthetics. Dropped. |
| *Acquired Taste* (International Lexicon of Aesthetics), philosophy blogs on taste | Encyclopaedia/blog. Useful for orientation on the philosophical history of taste; carries no evidence. |

## Open questions

- **Is there a peer-reviewed measurement of taste-specific training?** I found the mechanism
  (fluency/averageness) and the failure mode (convergence) but not a strong study on *how someone builds
  the ability to reliably leave the average*. The chapter's practical advice is therefore reasoned from
  the mechanism rather than cited. That is a real gap and it is stated as such in the caveats.
- **Goree's 44% is second-hand in this chapter.** It is quoted by a design scholar who read the paper,
  not from the paper's own page, which was unreachable. If the number matters, open the ACM version.
- **The "aesthetic bias" literature (Declos 2026) is unread.** It could support the claim that models
  systematically privilege certain aesthetics rather than merely regressing to an average.

## Claims downgraded or dropped

- **"AI output looks generic, and that proves machines have no taste."** Dropped — homogenisation
  predates generative AI and has a pre-model explanation. Replaced with the attractor framing.
- **"Average is bad."** Dropped. Fluency research says average is genuinely pleasing. The chapter is
  about deliberate deviation, not about the average being worthless.
- **"AI makes your work worse."** Dropped — the evidence says the opposite for individuals. The claim is
  narrowed to the collective-diversity effect, which is what the data support.
- **Ericsson/deliberate practice as support for building taste.** Dropped as a category error.
