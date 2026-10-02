---
chapter: 10
title: "MVP Thinking: Let AI Do the \"Thinking,\" You Do the Trying"
part: "Part IV — Systems and Their Costs"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-02
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3350
tags: [mvp, experimentation, hypotheses, forecasting, action]
---

# 10. MVP Thinking

> **The one thing to take away:** the thinking is not the part you hand over. The thinking is what makes
> the trying worth doing.

You spend the week building. A landing page, a deck, a prototype, a market brief. By Friday all of it is
polished, and it looks like progress.

And not one real person has seen any of it.

That week is the failure this chapter is about — and the tools that made the artifacts so easy to
produce are the reason it now takes real discipline not to have it.

## Why this matters now

Chapter 09 built a system for keeping what you learn. This chapter is the other direction: using what you
have to **act** — to make something, ship it, and find out whether you were right, for as little cost as
possible.

The chapter's title carries a piece of advice as old as the lean-startup movement: in the age of AI, *let
the model do the thinking and you do the trying.* On the surface it is the practical, humble version of
this book's whole argument. Models are tireless and cheap; you are neither. So let them generate, and
spend yourself on execution.

I want to separate two things in that sentence, because one is right and one is a trap, and the trap is
why most people waste the opportunity.

**The instinct that is right:** stop trying to *think your way* to certainty before you act. No model and
no plan can reason a new product or a career change into safety, and the people who try spend years
producing a plan that is wrong in ways no plan could have caught.

**The trap:** concluding that because you cannot think your way to certainty, thinking is the cheap part
you outsource. The evidence says the opposite. Thinking is precisely what makes the acting informative —
and it is the part no model can do for you, because it is about *your* situation.

So the title stays and the reading flips: **you do the thinking, and the trying is how you find out you
were wrong cheaply.** That is a much harder claim, and it is what the rest of this chapter establishes.

## The evidence that thinking is the lever

For once, this is a claim with a randomized control trial behind it, and from an unexpected direction.

Researchers took a set of early-stage startups and randomly assigned some to a training programme. Both
groups learned how to get feedback from the market. The difference was the instruction: the treated group
was taught to build explicit hypotheses about how their idea would perform and to "conduct rigorous tests
of their hypotheses, **very much as scientists do in their research**." The control group kept following
its intuition.

The result:

> entrepreneurs who behave like scientists **perform better**, are **more likely to pivot to a different
> idea**, and are **not more likely to drop out** than the control group in the early stages.

<!-- verified 2026-10-01 — source: https://doi.org/10.1287/mnsc.2018.3249 -->

Read what that is *not*. It is not "the scientists had better ideas." It is not "the scientists worked
harder." Every group was trying to succeed. The only thing that changed was whether the trying was
structured as a test of a stated belief.

Now the mechanism, in the authors' own summary, because this is where the chapter's argument lives:

> a scientific approach improves **precision** — it **reduces the odds of pursuing projects with false
> positive returns** and **increases the odds of pursuing projects with false negative returns.**

<!-- verified 2026-10-01 — source: https://doi.org/10.1287/mnsc.2018.3249 -->

That sentence does something subtle, and it is worth slowing down for. The scientific approach does not
make you **right**. It does not raise your hit rate. It changes your **error profile in both
directions** — you stop chasing things that were never going to work, *and* you stop throwing away things
that would have.

Almost all advice about decision-making is about avoiding the first error: don't chase bad ideas. This is
the rare piece of evidence that also counts the second: **how many good ideas did you abandon because you
never gave them a fair test?** That error is invisible. A bad idea you pursued leaves a wreck you can see;
a good idea you never tried leaves nothing at all. The structured approach makes both visible.

And that is why the thinking cannot be delegated. A model can generate ideas, sharpen a plan, and argue
any side. What it cannot do is tell you **what you are actually testing** — because that depends on what
you believe about your market, your users and yourself, and none of that is in the prompt.

### The finding that stops this becoming "pivot more"

There is a larger version of that study — a replication across four trials and hundreds of firms — and it
sharpened the result in a way that cuts against the obvious lesson.

> a **nonlinear effect on radical pivots**, with treated firms running **few** over **no or repeated**
> pivots.

<!-- verified 2026-10-01 — source: https://doi.org/10.1002/smj.3580 -->

If you came into this chapter expecting "experiments will tell you to change direction," that is not what
the evidence says. The disciplined firms did not pivot constantly. They landed in a middle band: **more
than the firms that never questioned anything, and fewer than the ones thrashing between ideas.**

The replication's own explanation is that the approach "enhances entrepreneurs' **efficiency in searching
for viable ideas**" and raises "**methodic doubt**."

<!-- verified 2026-10-01 — source: https://doi.org/10.1002/smj.3580 -->

Methodic doubt. Not paralysis, not constant reinvention — a working scepticism about your own idea that
is *specific enough to test*. And notice the connection to everything upstream: a pivot without a test is
just a mood change, the same failure as a decision without a falsifier (Chapter 06) or a belief without a
disconfirming observation (Chapter 07). **The discipline is one discipline, applied at the speed of
doing.**

## Why your forecasts will be wrong, in two directions

If structured thinking is the lever, the next question is what it protects you from. The research on
large-project forecasting gives an answer more useful than "people are overoptimistic," because it splits
the cause in two.

> it explains inaccuracy in terms of **optimism bias** and **strategic misrepresentation**

<!-- verified 2026-10-01 — source: https://doi.org/10.1177/875697280603700302 -->

**Optimism bias is a cognitive error.** You genuinely believe it will take four months, because your model
of the task is missing the parts you have not thought about. No dishonesty anywhere.

**Strategic misrepresentation is an incentive problem.** You know it will take eight months. You say
four. Because the four-month version gets approved, and the eight-month version does not.

That distinction matters more here than in a project-management text, and here is why. **A model is very
good at helping with the first and useless against the second.** Ask a language model to critique your
plan and it can surface the missing steps you didn't consider — genuine help with optimism bias. But ask
it to forecast *your* project, and it will produce whatever forecast the framing invites, fluently and at
length. If your unconscious goal is the four-month number that gets approved, you have just built a
machine that manufactures strategic misrepresentation and hands it back to you with a confident tone.

This is Chapter 02's sycophancy arriving where you did not expect it. The model is not lying to you. It is
reflecting the frame you brought — and if the frame is "tell me this is feasible," you will get it.

The remedy the research names is the **outside view**:

> reference class forecasting, which achieves accuracy in projections by basing them on **actual
> performance in a reference class of comparable actions**

<!-- verified 2026-10-01 — source: https://doi.org/10.1177/875697280603700302 -->

Which is, in one line, the whole discipline of this chapter. Stop forecasting from **inside** your project
— your plan, your energy, your special circumstances. Forecast from **outside** it: what happened to
other people who tried comparable things? The model is good at this too, and it is worth being precise
about *why*, because it is the same reason the adversarial pass works. The model has no stake in your
project's feasibility. Its lack of a stake — a defect everywhere else in this book — is exactly what
qualifies it for the outside view.

## The thing experiments will not tell you

Before the method, the counter-argument, because this book does not sell systems it cannot defend.

The lean-startup tradition has a serious academic critique, and its three complaints are worth knowing
precisely, because each corresponds to a failure this chapter has to avoid:

> **inadequate guidance provided for hypotheses generation**; **limits of experiential learning from
> customer feedback**; and the **incremental nature of experimentation outcomes**

<!-- verified 2026-10-01 — source: https://doi.org/10.1016/j.lrp.2019.101953 -->

Read the first one slowly, because it is the whole chapter. **The critique is not that experiments fail.
It is that the method does not tell you what to test.** "Build an MVP and learn" is silent on the only
question that matters: *which hypothesis is worth the build?* A cheap experiment into a worthless question
is still wasted — it is just wasted cheaply.

The second complaint matters just as much. **Customers tell you what they want, not what they would buy**,
and they are famously bad witnesses to their own future behaviour. A model trained on that feedback can
amplify it — generating confident conclusions from soft input, faster.

And the third: experiments produce **incremental** answers. They tell you whether to adjust a thing, not
whether the whole idea is dead. Which means they cannot substitute for the judgement Chapters 06 and 07
were about. They inform it. They do not replace it.

## The method: a loop you can run in an afternoon

So here is what is actually being asked of you. It is small, and the thinking is the hard part.

**One: write the belief as a testable claim.** Not "I think this could work." A specific claim about what
will happen that could be false. "People in this role will pay for the report more than once a quarter."
This is Chapter 07's falsifier, aimed at a project instead of a belief. The critique above says the method
won't do this for you — and it won't, because it depends on what you actually believe.

**Two: ask what the cheapest thing is that would tell you.** Not the best test. The cheapest informative
one. This is where the model earns its place: it is genuinely good at generating ten low-cost ways to test
a claim, and at listing the ways a test could mislead you. You are asking it to expand your options, not
to give you an answer.

**Three: set the decision rule before you run it.** *If I see X, I continue. If I see Y, I stop or
change.* Written down first, because this is the moment you are least able to be honest and the rule is
the only thing that will be. Chapters 05, 06, 07 and 08 all made this same move at different scales. It
is the same move here.

**Four: run it, then actually apply the rule.** The last step is the one people skip, and the evidence
says it is worth the discomfort: the pull to keep going after you have invested is real, but a
meta-analysis of the sunk-cost effect finds its size is "**contingent on the respective decision type**"
and that it is "**attenuated by time**" — strongest right after you commit, fading after.

<!-- verified 2026-10-01 — source: https://doi.org/10.1007/s40685-014-0014-8 -->

That is a practical fact with a scheduling consequence. **The moment right after you have invested is the
moment you are least able to judge whether to continue.** So the decision rule is not a formality to write
later. It is the only instrument you have at the exact moment your judgement is worst.

### What this looks like

The loop above is abstract, so here it is on a real-sized decision.

**The claim.** You believe a weekly newsletter about your field would attract paying subscribers, and your
evidence is that people engage with your posts.

**The cheapest informative test.** Not a website, not a logo — a single issue, sent to a list, with a real
price on a real checkout page, to see whether anyone's card comes out. Your belief is about *paying*, so
the test has to involve paying. A survey of interest would be cheaper and would tell you nothing.

**The decision rule, written first.** *If 2% of the list pays for issue two, continue for four more
issues. If fewer than 0.5% do, the newsletter is not a product — the writing can continue as writing.
Between the two, I run two more issues before deciding.*

**Applying it.** Suppose 0.3% pay. The story you will tell yourself on that day is that the price was
wrong, or the list was small, or you didn't promote it properly — every one of which may be true, and all
of which are reasons you wrote the rule in advance. The rule says stop the *product*, not the *writing*.

Read what the thinking did there, because none of it was delegated. The model could have drafted the
landing page, brainstormed ten test designs, and argued both sides. What it could not do is know that your
belief was about *paying* rather than *interest* — that required understanding your own claim well enough
to test the right one. **The thinking was the whole game, and the trying was how it got settled for the
price of one issue.**

### The temptation to skip straight to building

One failure mode deserves naming, because the tools make it easy and it looks like progress.

You can now generate a plan, a deck, a prototype and a market analysis in an afternoon. Every one of them
will look finished. And it is entirely possible to spend a week producing polished material that never
touches a real user — because generating artifacts *feels* like doing the work, and none of it can
disappoint you.

The evidence above is the antidote, and it is specific. The firms that did better were not the ones with
better materials. They were the ones whose materials were **tests**. A deck is not a test. A prototype
shown to five real users and modified afterwards is.

And the honest note here: **the model will never be the thing that stops you from doing this.** It will
help you build the artifact forever. The judgement to stop building and go get an answer is yours, and it
is the same judgement every earlier chapter has been pointing at.

## What the machine does here, and what it cannot

The book's usual division of labour, applied to acting.

**What it is genuinely good at:** generating cheap test designs you would not have thought of; critiquing
your plan for the steps you left out, which is direct help with optimism bias; supplying the outside view
from comparable cases, because it has no stake in yours; drafting the artifacts so the test costs hours
instead of weeks; and playing adversary to your own reasoning about the results.

**What it cannot do, and this is the chapter's claim:** it cannot tell you what you believe, so it cannot
tell you what to test. It cannot know which hypothesis is load-bearing in *your* situation. And it cannot
stop you from generating polished material instead of finding out — because generating is what it is for,
and it will do it as long as you ask.

## The honest caveats

**The chapter rests on abstracts, as Chapter 09's did.** PMC, PubMed, Europe PMC and the publisher
platforms all blocked automated access during this research, and the findings here come from the authors'
own abstract text retrieved through the OpenAlex and Crossref APIs by DOI — a genuine source,
cross-checked across both APIs, but **not the same as opening the papers.**

<!-- verified 2026-10-01 — source: https://doi.org/10.1287/mnsc.2018.3249 -->

**And the RCT population is startups, not people.** 116 Italian firms over about a year in the original;
759 firms in the replication. Applying "state a hypothesis and test it cheaply" to a career change or a
book is an extrapolation — a reasonable one, and one I have not verified. The direction of the finding
should survive; the specifics may not.

**The field does not agree with itself here.** There is a whole tradition — effectuation, from Sarasvathy's
work with expert entrepreneurs — that argues experienced founders *do not predict*; they act on means they
already control and let the goal emerge. That is in genuine tension with the approach this chapter just
recommended. The same comparative review that documents the tension also observes that the entrepreneurial
method space is "a **proliferation of relatively unrelated methods** with **varying degrees of rigor and
relevance**" — so the honest position is that the evidence favors the scientific approach *for the outcome
that was measured (precision)* and that the broader question is unsettled.

<!-- verified 2026-10-01 — source: https://doi.org/10.1007/s11187-019-00153-w -->

**One number I am deliberately not using.** The most dramatic forecasting statistic in circulation — that
9 of 10 rail projects overestimate demand, by an average of 106% — comes from a paper whose abstract
carries a **Notice of Redundant Publication**, the article having been substantially reproduced in one
that was later retracted. I am leaving it out rather than cite it for the memorable number. The clean
source above makes the same argument without the problem.

**And the boundary.** This chapter builds the system for acting. It deliberately does **not** argue what
all this offloading costs you — that is Chapter 11, the one chapter in this book that argues against the
book's own advice. If this chapter reads as "and do be careful," it has failed, because a warning is not a
method.

## Do this today

1. **Under 30 minutes.** Take one thing you are currently "planning" or "building." Write the belief
   underneath it as a single claim that could be false. If you cannot state it in one sentence, that is
   the finding — you do not yet know what you are building toward, and no amount of building will tell
   you.
2. **This week.** Design the cheapest test that would actually settle that claim, and write the decision
   rule before you run it: *if I see X, continue; if Y, stop.* Note how much harder the rule is to write
   than the test. That difficulty is the thinking you were about to outsource.
3. **This quarter.** Run one test where the artifact is disposable. The point is not the artifact. The
   point is to feel the difference between having *made* something and having *found out* something — and
   to notice how much easier the first is to mistake for the second.

## Further reading

- **Ch. 09 of this book, *Your Second Brain and Your First Brain*** — the system for keeping what you
  learn; this chapter is what you do with it next.
- **Ch. 11 of this book, *The Cost of Offloading*** — the price of all this. It is the book's own
  counter-argument and it should not be skipped.
- **Ch. 07 of this book, *Deep Thinking*** — the falsifier this chapter aims at projects instead of
  beliefs.
- Camuffo et al., *A Scientific Approach to Entrepreneurial Decision Making* (Management Science, 2020) —
  the RCT, and the precision finding: <https://doi.org/10.1287/mnsc.2018.3249>
- Camuffo et al., *A scientific approach to entrepreneurial decision-making: Large-scale replication*
  (Strategic Management Journal, 2024) — 759 firms, and the nonlinear pivot result:
  <https://doi.org/10.1002/smj.3580>
- Flyvbjerg, *From Nobel Prize to Project Management* (Project Management Journal, 2006) — optimism bias
  versus strategic misrepresentation, and the outside view:
  <https://doi.org/10.1177/875697280603700302>
- The Lean Startup critique in *Lean Startup and the business model* (Long Range Planning, 2019) — if
  experiments are so good, why is hypotheses generation the weak link:
  <https://doi.org/10.1016/j.lrp.2019.101953>

---
📅 Last updated: 2026-10-02
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
