---
chapter: 6
chapter_file: ch06-judgment-without-a-right-answer.md
researched: 2026-10-01
sources_kept: 7
sources_rejected: 4
---

# Research notes — Ch. 06: Judgment Without a Right Answer

Delivers the **no commitment** blind spot as a capability, and closes Part II. Also the home
`glossary.md` promised for **fuzzy decision-making**: *deciding with no defensible answer*.

The boundary contract is explicit and constrains what this chapter may do:

> 02 states that machines do not bear consequences; 06 teaches the reader what to *do* about it — how
> to decide when the data is silent, who owns the outcome, and how to act without a defensible answer.
> **02 is the theory; 06 is the practice. 06 must not re-argue 02.**

So this chapter does not establish that machines lack commitment — Ch. 02 did that. It is entirely
**what to do** when you must choose and cannot prove the choice.

## What the research changed

**The chapter's obvious shape was a decision framework. The evidence says the framework matters less
than who is answerable for the reasoning.**

I expected to write about decision *methods* — satisficing, one-way vs two-way doors, reversible vs
irreversible, and so on. Those are real and they are in the chapter, but the finding that reorganised
it is this one:

**Process accountability — being answerable for *how* you decided — consistently improves judgment
quality. Outcome accountability — being answerable for the *result* — does not.**

That inverts the intuition this chapter would otherwise have taught. The instinct is "since there's no
right answer, judge me on the outcome, because that's all there is." The research says the opposite:
when you are judged on the outcome, you get *worse* judgment, because people defensively optimise for
the metric instead of thinking. Being answerable for the *process* is what improves the thinking.

This also resolves the chapter's central tension with Ch. 02. Ch. 02 says the machine bears no
consequence. The tempting move is "so give it consequences" — and the research says that does not work
the way it sounds, because consequences attached to *outcomes* degrade judgment. What matters is who
is answerable for the **reasoning**, which is a thing only a person can hold.

The **commitment/abandonment** half of the chapter is a second finding that changed it. The chapter
originally covered only how to *make* a decision when the data is silent — and said nothing about the
harder case, which is *holding or abandoning* one while the evidence stays ambiguous. Sheridan &
Reingold supplied the mechanism: people disengage when the signal is a **blunder**, and stay stuck when
it is merely disappointing. Under "no right answer", the signal is always merely disappointing.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | naturalistic decision making recognition primed decision Klein expertise intuition | anysearch | yes | Found RPD model and Klein's own page |
| 2 | deciding under deep uncertainty no right answer satisficing heuristics | anysearch | yes | Satisficing-under-pressure study |
| 3 | accountability decision making ownership outcome responsibility improves judgment | anysearch | yes | **Best hit:** de Langhe et al. — process vs outcome accountability |
| 4 | irreversible vs reversible decisions commitment precommitment Bezos two-way doors | anysearch | partly | Mostly blog/popular coverage of Bezos; the underlying idea is sound but the sources are secondary |
| 5 | Klein RPD / de Langhe / regret research | anysearch | yes | Confirmed primaries |

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | de Langhe, van Osselaer & Wierenga, *The effects of process and outcome accountability on judgment process and performance*, **Organizational Behavior and Human Decision Processes** 115(2), 2011 — <https://www.colorado.edu/business/sites/default/files/attached-files/obhdp_2011_de_langhe_van_osselaer_wierenga.pdf> | primary (peer-reviewed; PDF opened — metadata and abstract confirmed) | **The chapter's spine.** Across three multiple-cue judgment studies: **process accountability, relative to outcome accountability, consistently improves judgment quality.** Also: outcome accountability boosts **heuristic processing** — i.e. judging on results pushes people toward shortcuts | yes |
| 2 | Klein, Calderwood & Clinton-Cirocco, Recognition-Primed Decision (RPD) model, 1985/1993 — <https://www.gary-klein.com/rpd> | primary (the researchers' own site describing their model) | Blind spot 4, human side: experienced decision-makers **generate one plausible option as the first they consider** and evaluate it by mental simulation, rather than generating and comparing a set. Decision by recognition, not optimisation | yes |
| 3 | Chen, Zhu, Alers, Egner, Sommer & Ferrari, *Heuristic satisficing inferential decision making in human and robot active perception*, **Frontiers in Robotics and AI** 11, 2024 — <https://pmc.ncbi.nlm.nih.gov/articles/PMC11589672/> | primary (peer-reviewed, open access) | Satisficing is not a failure mode: humans **modulate between near-optimal and satisficing solutions** under pressure, and learned human heuristics **outperform near-optimal algorithms** when constraints are unmodelled (time, resources, weather). Algorithms that assume a known model "fail to accomplish the necessary tasks" | yes |
| 4 | Simon's bounded rationality / satisficing, as cited and used in the above | primary-as-cited (secondary route) | Satisficing defined as accepting an option that meets a threshold rather than optimising | yes (via source 3) |
| 5 | Sharon et al., *The Effect of Outcome vs. Process Accountability-Focus*, 2022 — <https://europepmc.org/article/pmc/pmc9094407> | primary (peer-reviewed) | **Counter-evidence:** outcome accountability has a *beneficial* effect in **complex** tasks, while process accountability improves performance in **simple** tasks — the opposite split to de Langhe | yes |
| 6 | Sheridan & Reingold, *The Mechanisms and Boundary Conditions of the Einstellung Effect in Chess: Evidence from Eye Movements*, **PLOS ONE** 8(10), 2013 — <https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0075796> | primary (peer-reviewed, open access, **opened in full**) | The **commitment/abandonment** boundary: when the familiar option was merely suboptimal-but-attractive, players never disengaged — the subset who found the optimal move "gradually disengage[d]"; when it was a clear **blunder**, "both the experts and novices gradually disengaged". The signal's **clarity**, not its existence, determines whether people let go | yes |
| 7 | Jiang et al., *Artificial Hivemind*, NeurIPS 2025 — <https://neurips.cc/virtual/2025/poster/121421> | primary (peer-reviewed) | Cross-reference to Ch. 02: models are worst-calibrated exactly where annotators disagree — which is the condition this chapter is about | yes |

## Counter-evidence

| Source | What it contradicts | Response |
|--------|--------------------|----------|
| **Sharon et al. 2022** — <https://europepmc.org/article/pmc/pmc9094407> | Outcome accountability helps in **complex** tasks; process accountability in **simple** ones. That is the reverse of de Langhe's split, and this chapter is about complex, ambiguous decisions. | Taken seriously and named in the caveats. It means the advice is **conditional**, not a law: in genuinely complex work, being judged on outcomes may not be the poison de Langhe suggests. The chapter does not hide the contradiction. |
| **de Langhe et al.** themselves | Outcome accountability is not uniformly harmful — it has benefits, and "may in fact be desirable" in some settings. | Quoted rather than smoothed over. The chapter's claim is about the *direction* on judgment quality under ambiguity, not that outcomes never matter. |
| **Chen et al.** | Algorithms with a good model **outperform** heuristics when the model holds. | Reframes the chapter's point: heuristics win when the **model is wrong**, which is exactly the "no right answer" case. The chapter says this explicitly rather than claiming heuristics always win. |
| **Klein's RPD** | Experts *don't* deliberate — so a chapter advising structured reasoning could conflict. | Resolved by scoping: RPD is about *time-pressured* decisions where expertise is earned. The chapter uses it to show that "no right answer" does not mean "no method" — recognition is a method, and it is built from prior outcomes. |

## Rejected

| Source | Why not used |
|--------|--------------|
| Bezos "one-way / two-way doors" coverage — Farnam Street, Medium, LinkedIn, **fs.blog** | Every version is secondary. The idea is genuinely useful and widely attributed, but I found no primary source and the chapter does not need to lean on a CEO anecdote. The underlying reversible/irreversible distinction is used **as reasoning**, not as a citation. |
| Regret-aversion and "anticipatory regret" popular articles (Decision Lab, psychology blogs) | Blog framing. The academic regret literature (Lerner et al., Matarazzo et al.) is real but about emotion and choice broadly, not about deciding with no right answer. |
| Linked/Medium/YouTube explainers of RPD and NDM | Secondary. Klein's own page (source 2) is the primary route. |
| Mogensen & Thorstad, *Tough enough? Robust satisficing* (Springer, Synthese) | Blocked by Cloudflare, and philosophy-of-decision rather than evidence. Logged as a lead. |

## Open questions

- **The two accountability studies disagree about complex tasks**, and I could not resolve it. The
  chapter states the disagreement. If Sharon et al. is right that outcome accountability helps complexity,
  the practical advice narrows to "be answerable for the process *and* own the result" rather than
  "process beats outcome".
- **No study I found measures the specific case in the chapter's title** — an irreversible decision with
  genuinely no defensible answer. The evidence is adjacent: accountability research, satisficing under
  pressure, RPD under time pressure. The chapter says the advice is extrapolated, not directly measured.
- **`glossary.md`'s `Fuzzy decision-making`** had no source of its own. The chapter gives it one
  (de Langhe's accountability finding is about exactly this condition) but the term remains
  under-evidenced relative to the book's other claims.

## Claims downgraded or dropped

- **"With no right answer, you should be judged on the outcome."** Reversed — the evidence says outcome
  accountability degrades judgment quality. This was the chapter's instinct and the research flipped it.
- **"Heuristics are worse than careful analysis."** Dropped — satisficing strategies outperform
  near-optimal ones under unmodelled pressure.
- **"Experts deliberate before deciding."** Dropped — RPD shows they recognise and simulate instead.
- **"A decision framework is the answer."** Softened to "a framework helps, and who is answerable for
  the reasoning helps more."
