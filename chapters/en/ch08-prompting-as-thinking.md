---
chapter: 8
title: "Prompting as Thinking: From Searcher to Commander"
part: "Part III — Thinking With a Machine"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [prompting, briefing, delegation, verification, interface]
---

# 08. Prompting as Thinking

> **The one thing to take away:** the words you use matter far less than the thinking you put behind
> them — which is good news, because the thinking is the part you can actually improve.

## Why this matters now

Chapter 07 was judgement exercised with no model in the room. This chapter is the other half of Part III:
the interface **with** one. If 07 is the discipline, 08 is the instrument — and an instrument is only
worth what the hand holding it is worth.

The promise of this chapter is specific. Most people use a language model as a **search box with better
grammar**: they type a question, take the first answer, and if it is wrong they rephrase and try again.
That is the *searcher*. A few people use it as a **commander uses a capable subordinate**: they define
the mission, supply the context the subordinate cannot have, set the standard of what counts as done, and
check the work. That is the *commander*.

The gap between those two is not cleverness with words. It is a different understanding of what the tool
is and what you owe it — and it is the difference between getting a faster search and getting leverage.

## The advice that does not survive contact

There is no shortage of prompting advice. Be polite. Assign a persona. Say "think step by step." Add
"I'll tip you $200." Beg the model. Threaten it. Tell it you have no hands.

Some of this is folklore and some of it is real, and the problem is that you cannot tell which from the
outside — because the advice is all about **words**, and words turn out to be the least stable thing in
the whole arrangement.

Here is the finding that should reorganise how you think about all of it. Researchers took several widely
used language models and changed the prompt **format** in ways that preserved the meaning entirely —
nothing about *what* was asked changed, only how it was laid out. They measured the effect:

> **performance differences of up to 76 accuracy points**

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2310.11324 -->

Sit with the size of that. Not 76% better. A swing of 76 points of accuracy, from reorganising a prompt
that asked the same thing.

And it does not wash out as models get better: the sensitivity "remains even when increasing model size,
the number of few-shot examples, or performing instruction tuning."

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2310.11324 -->

The authors draw a methodological conclusion that is worth taking personally. Because format performance
"only weakly correlates between models," comparing models on one arbitrarily chosen prompt format is
nearly meaningless — which has a direct consequence for you. **If a 76-point swing is hiding in choices
nobody is tracking, then any single story of the form "this prompt worked" is close to worthless.** Yours,
and everyone else's.

Now the second finding, which kills the most-repeated piece of advice in circulation. "Think step by
step" — chain-of-thought prompting — is everywhere presented as the default. A meta-analysis of over 100
papers, plus the authors' own evaluations across 20 datasets and 14 models, found something more specific:

> CoT gives strong performance benefits **primarily on tasks involving math or logic**, with **much
> smaller gains on other types of tasks.**

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2409.12183 -->

The detail is sharper than the headline. On a broad knowledge benchmark, generating the answer directly
without any chain-of-thought gave "almost identical accuracy" — **unless the question or the model's
response contained an equals sign.** That is the boundary. The technique is not a general-purpose
thinking aid; it is a trigger for symbolic operations, and it "underperforms relative to using a symbolic
solver" at the thing it is actually good at.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2409.12183 -->

So of the advice you have absorbed, the canonical item is **conditional**, and the condition is not the
one anyone states.

### Why the listicle fails

The natural response to all this is to go find the real list — the definitive set of techniques that
actually work. It exists, and you should see its size.

The most comprehensive survey of the field catalogues a taxonomy of **58** prompting techniques (plus 40
more for non-text modalities), built from a systematic review, with a meta-analysis of the entire
prefix-prompting literature attached.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2406.06608 -->

Fifty-eight. And that survey is genuinely valuable — it is the closest thing to the answer, and it does
contain techniques that work. But look at what it implies about you.

If the transferable skill is "know the 58 techniques and deploy the right one," then the skill is
memorising a catalogue that is growing, that is format-sensitive to a degree that makes any entry
unstable, and that will be partly obsolete before you finish. That is not a skill. That is a subscription.

And notice where the listicle leads. A person holding a list of 58 techniques, facing a task, has to
first decide *which* technique applies — which is a judgement about the task, not about prompting. The
list has not replaced the thinking. It has only hidden it behind vocabulary.

That is the thesis of this chapter, and it is the same shape as every other chapter in this book. **The
lever is not the thing the advice tells you to optimise.** Wording is demonstrably unstable. Technique
is conditional and multiplying. What is left is what a commander brings, and none of it is phrasing.

## Position is a decision you own

Before the four things a briefing needs, one structural finding, because it is the clearest case of
*thinking* beating *wording*.

Take a long context — a stack of documents, a long transcript, a big pile of retrieved material — and
ask the model to find something in it. Where you put the relevant information decides whether it gets
used:

> performance is often highest when relevant information occurs at the **beginning or end** of the
> input context, and significantly degrades when models must access relevant information in the
> **middle** of long contexts, **even for explicitly long-context models**.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2307.03172 -->

Note the last clause, because it is the one people get wrong. A bigger context window does not fix this.
The model can *hold* the middle of a long context; it is markedly worse at *using* it.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2307.03172 -->

This is the whole argument in one finding. You did not write a single better word. You changed where the
material sat — a decision about structure, made in about ten seconds, and it moved the outcome more than
most rewriting will.

Which means "write a better prompt" is the wrong unit of work. **Arrange a better briefing.** The
question goes at the end, where the model is most likely to use it. The material that matters goes at the
edges, not buried in the middle. Those are your choices to make, and they are choices, not guesses — the
research tells you which way they go.

## A briefing, not a question

So here is what replaces the question. A briefing has four parts, and the first three are the ones you
supply from your own head — they exist nowhere else, which is exactly why the model cannot proceed
without them.

**One: the intent, not the query.** Not "summarise this report" but what the summary is *for*. For a
board that will ask about risk. For a colleague who has not read it. For yourself, tomorrow, deciding
whether to act. The same document, three different summaries — and the model cannot pick, because the
purpose lives in your situation, not in the document.

This is the difference between the searcher and the commander in one line. The searcher states a task.
The commander states a *purpose* and lets the task follow from it.

**Two: the context only you have.** What has been tried. What the constraint is. Who the audience is and
what they already believe. What happened last time. Every one of these is invisible in the query and
decisive for the answer, and the failure mode is silent: a model given no context does not stop and ask.
It fills the gap with something plausible, and plausible is where it is strongest.

**Three: the constraints that are not negotiable.** Length. Register. What must not be said. The
regulatory line. The thing the client will not accept. State them, because an unstated constraint is not
a constraint — it is a wish, and the model will not honour a wish it cannot see.

**Four: the standard of done.** This is the part everyone omits, and it is the part that does the most
work.

### What the two look like side by side

Abstract frameworks are easy to nod at and hard to use, so here is the same task both ways.

**The searcher's message:** *"Summarise this report."*

**The commander's briefing:** on the same report, with the same model.

> **Intent.** I am a product lead deciding on Friday whether to delay a launch. I need to know what this
> report says that bears on that decision — not what it says.
>
> **Context.** We are three weeks from the date. Engineering says the risk is contained; the report was
> written by the team that built the thing. I do not need a balanced account of its merits.
>
> **Constraints.** Under 300 words. Do not summarise the methodology. Flag anything that contradicts the
> engineering assessment explicitly.
>
> **Standard of done.** I will reject it if it does not name at least one concrete risk with a number
> attached, if it hedges without telling me which way the evidence leans, or if it treats the report's own
> conclusions as findings rather than claims.

Read the difference. The second message is not better *written* — it is not more eloquent, there is no
magic phrasing, and nothing in it resembles a technique from a list. It is better **thought about**. Every
one of those four blocks is a decision that could only be made by someone who knows what the decision is
for, and none of them would survive being formatted differently.

And note what went into it that a prompt-writing guide could never supply: the Friday deadline, the
engineering claim, the fact that the authors are not neutral. That material is not in the report. It is in
your head, and if you do not put it in, the model will substitute something plausible — which is the
failure mode from the section above, arriving silently.

### The standard is the part everyone omits

Everything above is still just a *description*. A standard is different — it is what you will check the
output against, and writing it down before you look is what turns a request into a piece of thinking.

It is the same move you have met three times already. Chapter 05 set the bar before looking at the
options. Chapter 07 wrote the falsifier before seeing the evidence. Chapter 06 set the satisficing
threshold before the choice. Here it is again, one level down:

**How will I know this is good?** Not "a good summary" — that is a mood. What would make you reject it:
no numbers, hedges everything, misses the one risk that matters. Write two or three of those down.

The payoff is not that the model will obey. It is that **you cannot write an acceptance test for
something you have not thought about.** Producing the standard is where you discover that you did not
know what you wanted — which is the actual work, and which you would otherwise have discovered from a
useless answer, one rephrase at a time.

And there is a second payoff, which is that the standard is what lets you evaluate what comes back
instead of just reacting to how it feels. A fluent answer that fails your stated standard is easy to
reject. A fluent answer you are judging by taste is the trap from Chapter 03.

### The fifth thing, which is not in the prompt

You can write a perfect briefing and still lose, because the briefing is only the first pass. The
remaining work is the loop — and this is where 08 depends on 07.

**Treat the first output as a draft from a competent stranger who has no stake in your problem.** Because
that is what it is. Read it the way you would read a junior colleague's first attempt: for the structure
and the gaps, not for the prose. The prose will always look finished. That is the failure mode Chapter 01
documented, and the reason to verify rather than be impressed.

**Then run the adversarial pass — on the briefing, not just the answer.** Chapter 07's move applies
here at a second level. Ask what the model would have said if you had briefed it the opposite way. If the
answer barely changes, your briefing was not doing any work and the model was answering the task, not
your intent.

**And hold the standard you wrote.** This is where the searcher and the commander diverge for the last
time. The searcher, unsatisfied, rewrites the question. The commander checks the output against the
standard and, if it fails, decides *which* of the four parts was wrong — intent, context, constraints, or
standard. Re-wording is the last resort, not the first, because it is the only lever you already know is
unstable.

## What the machine does here, and what it cannot

Consistent with the rest of the book: know which side of the line you are standing on.

**What it is genuinely good at:** producing a competent first draft at a speed no person matches;
restating your own thinking back in a form you can inspect; generating options you would not have listed;
and — as Chapter 07 used it — arguing the other side at full strength, with nothing to protect. That is
real leverage and it is cheap.

**What it cannot do, and why the briefing exists:** it cannot know your intent, hold your context, or
apply your standard of done — because all three live outside it. This is not a temporary limitation
waiting on the next model. They are *your* facts, and no amount of context window makes them the model's.

**And the one that makes verification non-optional.** A model's preference training pushes it toward
answers you will like. In the research on this: "when a response matches a user's views, it is more
likely to be preferred," and both people and the models trained on their preferences "prefer
convincingly-written sycophantic responses over correct ones a non-negligible fraction of the time."

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2310.13548 -->

Chapter 02 built the theory of this. Here is the practical consequence for a briefing: **you must never
let agreement be the signal.** If the model says your draft is strong, you have learned that your draft
is agreeable, which you already knew and which is not the same thing.

One more piece of honesty about the reader. The data on real use — 37,845 logged conversations — shows
people using these tools in a **strongly action-oriented**, largely work-related way, with most
interactions classified as *doing* rather than *asking*.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2609.28990v1 -->

That tells you what people *do*. It does not tell you they are doing it well, and I am not going to
pretend it does. Most of those conversations are probably exactly the searcher pattern this chapter is
trying to replace. The room to improve is the point.

## The honest caveats

**My two best sources for this chapter would not open, and it shows.** *Why Johnny Can't Prompt* — the
CHI study of how non-experts actually try to prompt, and the single most on-topic paper I found — is
behind ACM's bot protection, and OpenAI's large usage study returned an error to every attempt. So this
chapter argues about prompting **without direct evidence on how people actually prompt**. What I have is
what they *do* with the tool, not how they think about it. That is a genuine gap, and it is the gap that
would most usefully sharpen or falsify the searcher/commander contrast.

**The sensitivity finding is from 2023–24 open models, not today's frontier.** The 76-point swing was
measured on LLaMA-2-13B and its contemporaries. The authors found the sensitivity survived instruction
tuning and scale — but "scale" there means the models they tested, and whether the specific number holds
for the model you are using now is not established by this paper.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2310.11324 -->

Take the *direction* seriously — wording is fragile — and the precise figure loosely.

**And the four-part briefing is a framework, not a tested intervention.** The findings behind it are
solid: formatting swings results, position determines use, chain-of-thought is conditional, and
sycophancy is real. But I have not cited a study showing that people who write intent/context/
constraints/standard get better outputs than people who write careful questions. The structure follows
from the evidence; it is not the same as itself being the evidence. That is the same disclosure Chapter
07 had to make, and for the same reason.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2307.03172 -->

**One thing I am deliberately not claiming.** The survey catalogues 58 techniques and includes a
meta-analysis of the literature — so techniques *do* work, and I am not arguing that prompting skill is
worthless. The claim is narrower: the catalogue is too large, too format-sensitive and too fast-moving to
be the thing you carry, so the transferable part is the thinking. If a specific technique earns its place
in your work, keep it — but keep it *because you checked*, not because it was on a list.

## Do this today

1. **Under 30 minutes.** Take a task you would normally type as a question. Write the four parts instead:
   the intent (what it is for), the context only you have, the non-negotiable constraints, and two
   sentences on how you will judge the result. Compare the output to what the bare question gives you.
   The gap is your briefing's value, and you can see it once.
2. **This week.** Delete "think step by step" from your habits unless the task involves maths or logic.
   You will lose nothing — the evidence says the difference elsewhere is close to nil — and you will stop
   mistaking ritual for technique.
3. **This quarter.** For the one task you do most often with a model, write your standard of done and
   keep it next to the task. Reuse it every time. This is the only one of the three that compounds,
   because a standard you have written down is a standard that stops being reinvented.

## Further reading

- **Ch. 07 of this book, *Deep Thinking*** — the discipline this chapter assumes: the adversarial pass
  and the pre-committed falsifier, both of which 08 uses rather than re-teaches.
- **Ch. 09 of this book** — accumulation. Prompting is the instrument; 09 is what you keep.
- **Ch. 02 of this book, *AI's Blind Spots*** — sycophancy and homogenisation, the reason "it agreed with
  me" is not a result.
- Sclar et al., *Quantifying Language Models' Sensitivity to Spurious Features in Prompt Design* (ICLR
  2024) — read it before you trust anyone's prompt, including your own:
  <https://arxiv.org/abs/2310.11324>
- Sprague et al., *To CoT or not to CoT?* (ICLR 2025) — the conditional finding, and the equals-sign
  detail: <https://arxiv.org/abs/2409.12183>
- Liu et al., *Lost in the Middle: How Language Models Use Long Contexts* (TACL 2024) — why your
  question goes at the end: <https://arxiv.org/abs/2307.03172>
- Schulhoff et al., *The Prompt Report* — the most comprehensive survey to date, and the best argument
  against trying to memorise it: <https://arxiv.org/abs/2406.06608>

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
