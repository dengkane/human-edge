---
chapter: 5
title: "Cross-Domain Thinking: Why AI Interpolates but Never Connects"
part: "Part II — Building Your Moat"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [cross-domain, analogical-reasoning, reframing, einstellung, transfer]
---

# 05. Cross-Domain Thinking

> **The one thing to take away:** the machine is good at connection and bad at deciding to look — and
> so are you. What separates you is who pays for the reframe.

## Why this matters now

Start with a chess problem, because it is about you and not about AI.

Researchers gave chess players a position and asked for the fastest win. The position contained two
solutions: one familiar and good, one better and less obvious. The familiar one was enough to make
players stop looking. It **reduced experts' problem-solving ability to roughly that of players three
standard deviations below them in skill.**

<!-- verified 2026-10-01 — source: https://pubmed.ncbi.nlm.nih.gov/17418112/ -->

Three standard deviations. That is not a small distraction; it is an expert performing like a strong
amateur because the first good idea arrived and blocked the better one.

The mechanism is the part that should bother you. Eye-tracking showed that players kept looking at the
squares associated with the familiar solution — **even while they believed they were searching for
alternatives.** Their attention was biased toward evidence that fit the first idea and away from
evidence that would break it, below the level of their own awareness.

<!-- verified 2026-10-01 — source: https://cognition.aau.at/download/Publikationen/Bilalic/Bilalic_etal_2008a.pdf -->

This is the Einstellung effect, and I am opening a chapter about AI's third blind spot with it because
we need to kill something before we start.

Because the easy version of this chapter goes like this: *machines optimise inside the frame they're
given. They can't step outside it. You can. So your moat is the ability to reframe problems.*

Every part of that is wrong or useless. You cannot step outside frames as a standing capability — the
chess masters just demonstrated it. And "your moat is reframing" is not advice; it is a compliment you
are hoping to deserve.

The honest version is stranger, harder, and much more useful. **Both you and the machine get stuck
inside a frame — for different reasons, and with a different exit.** Neither gets out for free. What
you have that the machine does not is not the ability. It is the **stake**: you are the one who pays
when the reframe turns out to be wrong, and that turns out to be what makes it worth doing at all.

## Two ways to get stuck

Chapter 02 put it as *no outside* — a model optimises within the frame it was given and does not notice
that the frame is the problem. That claim is true and, on its own, almost worthless, because it is the
kind of thing that expires: someone will build a system rewarded for questioning premises, and the
chapter will read as dated.

So let me state the machine's version and your version side by side, because comparing them is the
whole argument.

| | The machine | You |
|---|---|---|
| **Why it sticks** | Questioning the frame scores zero on the metric it is graded against. There is no gradient pointing out of the box. | The first good idea captures attention. You keep looking at the squares that fit it, while believing you are open-minded. |
| **How it feels from inside** | Like nothing. There is no experience of being stuck. | Like diligence. Searching hard, considering options, being thorough. |
| **How it ends** | When someone hands it a different frame to optimise within. | When something forces attention back — usually a failure, a deadline, or another person. |

Read the middle row again. The machine's blind spot is invisible because it is not experiencing
anything. **Yours is invisible because it disguises itself as working hard.** That is the worse
failure mode, and it is the reason this chapter is about you rather than about AI.

The chess research makes the point sharper than I could. The experts who found the optimal move were
not smarter or more open. Eye-tracking showed they were the ones able to **gradually disengage** their
attention from the familiar solution — and they were also the ones most likely to have a **blunder** in
the position, because a bad familiar move generates clear negative feedback that forces a second look.

<!-- verified 2026-10-01 — source: https://cognition.aau.at/download/Publikationen/Bilalic/Bilalic_etal_2008a.pdf -->

Sit with that. The experts who escaped did so because something made the first answer *unsatisfying*
enough to abandon. Not because they were more creative. Because the familiar move was bad enough to
push them out.

Which means the whole skill is not "thinking outside the box". It is **noticing that you are in one**,
and you will not notice by trying harder inside it.

## What the machine can actually do

Now the machine's own failures, because honesty here is what makes the rest usable.

Give people and language models the same analogy tasks. In the familiar Latin alphabet, the models
matched or beat children. Then the researchers moved the same task to an unfamiliar domain — a list of
symbols with the same underlying structure but no familiar surface. **Adults and children generalised
easily. The models did not.**

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2411.02348 -->

That is the far-transfer failure: the machine can work the structure while the surface is familiar, and
loses it when the surface changes.

Here is where the naive reading goes wrong, so follow closely. That result is *not* "machines cannot do
cross-domain thinking." The very next study shows the opposite.

Researchers took open-ended biomedical problems and asked models to generate solutions. Baseline
models, left to their own devices, **collapsed** — generating novel solutions as little as **1.6%** of
the time, mostly recycling semantically similar answers.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2605.11258v1 -->

Then they changed one thing. Instead of asking for solutions, they prompted the model to **generate
cross-domain analogies first** — to find a problem in another field that shares the same relational
structure — and to use those analogies to search for solutions. Diversity improved by **90–173%**, and
the novel-solution rate went from 1.6% to **over 50%**. Four of the proposed approaches were implemented
on real biomedical problems, with consistent gains.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2605.11258v1 -->

So the machine can transplant structure across fields. It can do it well. What it could not do was
**decide to**. Asked to solve the problem, it solved the problem — and the frame stayed where it was.
Asked to look somewhere else, it looked, and found things.

Put the two studies together and the blind spot is precise and much narrower than Chapter 02 made it
sound:

> **The machine does not fail at connection. It fails at the decision to look — and the decision is
> not something it can supply, because it is not the one who pays for it.**

Which is the version of this chapter that survives a better model. If someone builds a system that
questions its own premises, it will still be working on the problem *it was asked* to work on, and
someone still has to decide that the problem was wrong.

## The reframe is paid for, and you are the one who pays

Here is what that decision costs, stated concretely, because it is the whole chapter.

When I say a reframe has to be paid for, I mean four real things, all of them falling on a person:

**You have to abandon work.** The frame you are leaving was probably something you built. Reframing is
not adding a perspective; it is writing off the progress you made inside the old one.

**You have to be wrong out loud.** The machine can produce a reframe with no exposure. You have to say,
in front of people who watched you commit, that the thing you all agreed to build is the wrong thing.

**You have to lose the quarter.** The new frame does not prove itself immediately. There is a stretch
where you have the cost and not yet the benefit, and no metric on the dashboard rewards you for it.

**You have to accept the risk of it failing.** Sometimes the reframe is wrong, and you are the one who
cannot deflect the consequence. As Chapter 02 put it: the output costs the machine nothing.

That is what the machine's reframe, when you get one, arrives without. Not the insight — you can get
the insight, and the analogy research says it will often be good. The **liability**.

And here is the payoff of the whole argument. **That liability is not a tax on the skill. It is the
thing that makes the skill real.** A reframe that nobody has staked anything on is not a reframe, it is
a suggestion. What makes it a decision is that someone had to weigh the abandonment, the exposure, the
quarter and the risk, and chose anyway.

A model cannot weigh those. Which means the capacity that matters is not the ability to have the idea —
that is now cheap, and getting cheaper. It is **the willingness to act on a reframe you cannot prove**,
and that is a thing only a person can do badly and then live with.

### Where the machine really helps

None of this makes the tool useless, and I do not want you to read it that way. It is genuinely good at
a specific part of this, and knowing which part is the difference between a colleague and a crutch.

**Use it to generate the candidate frames you would never have thought of.** That is the analogy result:
ask for cross-domain structural analogues and you get 90–173% more diversity. This is a real
capability and you should be extracting value from it every week.

**Do not use it to choose.** The choosing is where the abandonment, the exposure and the risk live, and
it is exactly the part that cannot be delegated, because delegating it does not transfer the
consequence — it just leaves you holding it without having thought about it.

There is a sharper way to put the division. The machine can tell you **what** the frame is like. It
cannot tell you whether it is **worth** leaving, because "worth it" is a comparison of two costs it can
never pay.

## The practice: how to get out of a frame you cannot see

Now the usable part. Given that the trap is invisible from inside — that is what the chess research
established — the practice cannot be "think harder" or "be more open-minded". Both are instructions to
try harder at the thing that is failing.

What follows from the evidence is a different shape. Every move here **forces the frame into view from
outside**, usually by importing something.

**Name the frame in one sentence.** Write down what problem you are solving, as a sentence a stranger
could disagree with. "We need to improve retention" is a frame. Notice how much it assumes — that
people should stay, that leaving is the failure. The sentence is checkable; the assumption inside it
usually is not, until you write it down.

**Ask what the problem would be if the constraint were different.** Take the constraint you have not
questioned — the budget, the platform, the team size, the deadline — and ask what the problem becomes
without it. This is the mechanical version of leaving the frame, and it works because constraints are
where frames hide.

**Import from a field that has your structure.** This is the one the machine is genuinely good at, and
the analogy research gives the method: describe the *relational structure* of your problem — what
connects to what, not what it is made of — and ask for domains where that same structure appears. Not
"how do other companies do onboarding". "What other systems face a one-shot trust decision with
unrecoverable failure?" That second question gets you floods, parachutes and dating, and one of them
will be useful.

**Get the counter-argument from someone who pays for being wrong.** This is the cheapest exit and the
most reliable. Someone with a different stake will see your frame instantly — not because they are
cleverer, but because they are not inside it. Chapter 04's finding applies directly: they will also be
willing to tell you, because it is not their quarter. The catch is that this only works if you have
noticed that you might be in a frame, which is why the first move is naming it.

None of those four requires insight. All of them are mechanical, and that is deliberate: the chess
evidence says the exit is not a flash of creativity, it is **something that makes the first answer
unsatisfying enough to abandon.** These four moves manufacture that condition on purpose.

### The move that is easy to skip

There is a fifth, and it is the one that separates people who have this skill from people who talk
about it.

**Keep the reframe you rejected.** When you generate candidate frames — with the machine, with a
colleague, alone — you will regularly get one that is genuinely better and that you decide not to
take, because the timing is wrong or the organisation will not survive it. Write it down, with the
reason you declined.

Two things happen. First, you build a record of frames that were right too early, which is the raw
material for the next decision. Second, and less comfortably, you build a record of **how often you
decline the reframe for reasons that have nothing to do with whether it is correct.** That record is
the most honest feedback you will ever get about your own judgement, because it is the only one where
the stakes are real and the outcome is unknowable.

The machine will never have that list. It has nothing to decline, and nothing it declined to regret.

## The honest caveats

**The strongest counter-evidence is that AI does cross-domain work well.** Prompted for structural
analogies, models produced 90–173% more diverse solutions and novel approaches more than half the time
on real biomedical problems, several of which were implemented successfully.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2605.11258v1 -->

If your model of this chapter is "AI can't connect fields," that model is wrong and the evidence is
against it. The claim is about *who decides*, not about capacity — and if that distinction ever stops
mattering, this chapter stops mattering with it.

**The far-transfer failure may be temporary.** Models failed to generalise analogies to an unfamiliar
symbol set where children succeeded.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2411.02348 -->

That is a 2024–25 result about specific models, and it is exactly the kind of claim this book warns
against elsewhere. I am citing it as a dated observation, not as a structural limit, and the chapter's
argument does not depend on it. If it falls, the argument still stands.

**The dial is not stuck.** The same chess research found the Einstellung effect **weakened with greater
expertise** — the trap is not a fixed property of humans, it is a skill boundary.

<!-- verified 2026-10-01 — source: https://pubmed.ncbi.nlm.nih.gov/17418112/ -->

That cuts against me in one direction: if the skill is trainable, so is the machine's, and the gap
narrows from both ends. It cuts for me in another: it means this is a practice rather than a talent,
which is what the chapter claims and what makes the advice possible.

**One finding pointed the other way entirely, and I should not bury it.** In an experiment with more
than 800 participants across 40+ countries, higher exposure to AI ideas **increased** collective idea
diversity — the opposite of the homogenisation story Chapter 03 tells. "AI made ideas different, not
better."

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2401.13481 -->

I am not going to pretend to reconcile them. The two studies differ in task, design and what they
measure — Ch. 03 used a fixed task with a fixed prompt; this one used a dynamic design where each
participant saw prior participants' ideas, and it measures divergence under exposure. The honest
reading is that "AI homogenises creativity" is **context-dependent**, not a law, and I have stated it
too confidently in the chapter where it appears.

**And the limit on the sources themselves.** The single most relevant study — a direct comparison of LLM
and human analogical reasoning on strategic decisions — was unreachable to me (Cloudflare), so it is
not cited. The Einstellung figures are read from the paper's abstract. Both are noted in the research
notes.

**Finally, the structural caveat, which is the one to hold.** Of the four blind spots in Chapter 02,
this is the one whose machine-side version expires. "A model cannot think beyond its frame" is a claim
that gets cheaper every year, and I have deliberately not rested the chapter on it. What the chapter
rests on is that **a reframe has to be paid for** — and if that ever stops being true, it will not be
because a model improved. It will be because we decided consequences no longer attach to people, which
is a different book entirely.

## Do this today

1. **Under 30 minutes.** Write the problem you are currently working on as one sentence a stranger
   could disagree with. Then list the three assumptions inside that sentence. You will find the frame
   in the second or third one.
2. **This week.** Take the constraint you have never questioned. Write one paragraph on what the
   problem becomes without it. You do not have to act on it — the point is to see that you had a
   choice you had stopped perceiving.
3. **This quarter.** Start the rejected-reframe log. Every time you or your team consider a different
   framing and decline it, write down the frame and the reason. At the end of the quarter, read the
   reasons. Separate the ones that were about being *wrong* from the ones that were about being
   *expensive*. That ratio is a measurement of your own judgement, and almost nobody ever takes it.

## Further reading

- **Ch. 02 of this book, *AI's Blind Spots*** — the "no outside" blind spot, and why it was flagged
  there as the one to hold loosely.
- **Ch. 03 of this book, *Taste*** — the neighbouring skill. Taste connects things *inside* a domain;
  this chapter carries a structure *across* one.
- **Ch. 06 of this book, *Judgment Without a Right Answer*** — what to do when the reframe is right and
  you still cannot prove it, which is where this chapter's liability actually gets exercised.
- Shen, Druckmann & Zou, *Unlocking LLM Creativity in Science through Analogical Reasoning* — the
  method, the numbers, and the counter-evidence to this chapter in one paper:
  <https://arxiv.org/html/2605.11258v1>
- Bilalić, McLeod & Gobet, *Why good thoughts block better ones* (Cognition, 2008) — read it for the
  eye-tracking: it shows the trap working below awareness, which is why "try harder" cannot fix it:
  <https://cognition.aau.at/download/Publikationen/Bilalic/Bilalic_etal_2008a.pdf>
- Stevenson et al., *Can Large Language Models generalize analogy solving like children can?* (TACL) —
  the far-transfer boundary, stated precisely:
  <https://arxiv.org/abs/2411.02348>

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
