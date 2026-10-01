---
chapter: 3
title: "Taste: Developing Judgment in an Age of \"Average Beauty\""
part: "Part II — Building Your Moat"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [taste, judgment, homogenization, average-beauty, curation]
---

# 03. Taste

> **The one thing to take away:** the average is an attractor that both you and the machine fall into,
> and taste is the deliberate act of leaving it.

## Why this matters now

In 2018, a team of researchers did something patient and slightly obsessive. They took more than
227,000 screenshots of about 10,000 popular websites, spanning 2003 to 2019, and used computer vision
to measure how visually similar those sites were to each other, year by year.

Websites got *less* alike until about 2007. Then the trend reversed hard: between 2010 and 2019, the
average layout distance between sites **fell 44%**.

<!-- verified 2026-10-01 — source: https://www.jonkolko.com/phd/writing/25-07-12-homogenization-of-web-design -->

There was no generative AI at the time of that study. No model, no prompt, no diffusion. The web
converged anyway. The designers they interviewed named the causes themselves: shared frameworks and
libraries, responsive design collapsing every layout onto the same stackable columns, CMS templates,
and SEO practices dictating what goes above the fold. One finding should stop you cold — **adoption of
the same libraries correlated strongly with visual similarity.**

<!-- verified 2026-10-01 — source: https://www.jonkolko.com/phd/writing/25-07-12-homogenization-of-web-design -->

I am opening this chapter about taste with a study about *sameness before AI* because the lazy version
of this chapter would be a lie, and a useful one to a certain kind of reader. The lazy version says:
AI has no taste, that's why everything looks the same now, and your job is to be the human who still
has taste.

Every part of that is either false or useless. The sameness did not start with the machines. And "be
the human with taste" is not advice — it is a compliment you are hoping to deserve.

Here is the real problem, and it is harder because it is not about the machine at all. **You and the
model share an attractor.** You are both pulled toward what is familiar, fluent, and typical, because
that is what human beings reward. Chapter 02 established that the model has no preference of its own —
it lands on the centre of everything it has read. This chapter is about the discovery that the centre
is not a machine phenomenon. It is where human judgement goes to rest.

Which means taste is not a gift you have. It is a discipline you either practise or don't.

## Why the average is so hard to resist

Before you can decide whether you have taste, you need to understand why it is so easy to lose. The
answer is older than design and has nothing to do with computers.

Psychologists call it **processing fluency**, and the finding is robust across decades: the more
fluently you can process something, the more positively you evaluate it. Aesthetic pleasure is a
function of processing dynamics, not of some property of the object.

<!-- verified 2026-10-01 — source: https://pubmed.ncbi.nlm.nih.gov/15582859/ -->

Read that as a description of your own taste and it should make you slightly uncomfortable. What feels
like "I know good work when I see it" is, at least partly, "this was easy for me to parse." Prototypes
are rated as more attractive. Familiar layouts convert better. The template that "feels professional"
feels that way because it resembles the last hundred things you trusted.

This explains the pre-AI convergence without any appeal to laziness or conspiracy. A designer A/B tests
two layouts; the more familiar one wins, because visitors parse it faster. A founder picks the design
that feels safe. Multiply that by every designer and every product team for a decade, and you get a 44%
collapse in visual diversity — **from nothing more sinister than humans preferring what they can
process easily.**

<!-- verified 2026-10-01 — source: https://www.jonkolko.com/phd/writing/25-07-12-homogenization-of-web-design -->

Now add the machine, and understand precisely what it adds.

A model samples from a probability distribution, and the densest probability mass sits near the mode —
the most typical thing in its training data. Train it on human preferences, and you have built a
machine that optimises for immediate human approval. The result is what Chapter 02 called the
Artificial Hivemind: individual models repeat themselves, and different models produce strikingly
similar output.

<!-- verified 2026-10-01 — source: https://neurips.cc/virtual/2025/poster/121421 -->

Here is the sentence to hold on to. **The same cognitive bias that made human-built websites converge
through A/B tests and template marketplaces has been distilled into a reward function and industrialised.**
It is beauty-in-averageness with a training budget. The attraction you feel toward the fluent, safe
option is real, and it is now also the thing with the most compute behind it in the history of design.

### The cost shows up in the aggregate, not in your own work

Here is the finding that should worry you most, and it is from the best study in this chapter.

Researchers ran an experiment where some writers were given story ideas from a language model and
others were not. The AI-assisted stories were rated **more creative, better written, and more
enjoyable** — and the biggest gains went to the *least* creative writers. If the study had stopped
there, it would be a story about AI lifting everyone up.

It did not stop there. **The AI-assisted stories were measurably more similar to each other than the
stories written by humans alone.**

<!-- verified 2026-10-01 — source: https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/ -->

The authors called this a social dilemma, and their framing is better than anything I could write:
*with generative AI, writers are individually better off, but collectively a narrower scope of novel
content is produced.*

<!-- verified 2026-10-01 — source: https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/ -->

Sit with the trap in that sentence. Every individual decision to use the tool is *rational*. Your draft
gets better. You finish faster. There is no moment where you experience a loss, because the loss is
spread across everyone and shows up only in the aggregate. Nobody's story got worse. Every story got a
little more like every other story.

This is why "just make good work" is not a strategy. You will not feel the drift from inside it. Your
own output will keep improving while your *distinctiveness* — the thing that made you worth choosing
over a competent stranger — quietly narrows toward the average.

And the homogenisation has a direction. In a cross-cultural experiment, 118 participants from the US
and India wrote about culturally grounded topics, some with an AI writing assistant and some without.
The AI suggestions pushed Indian writers toward Western norms. When participants wrote about a favourite
food or holiday, the AI suggested pizza and Christmas. When an Indian writer began typing "S" for Shah
Rukh Khan, the assistant offered Shaquille O'Neal.

<!-- verified 2026-10-01 — source: https://news.cornell.edu/stories/2025/04/ai-suggestions-make-writing-more-generic-western -->

Indian participants kept 25% of the suggestions against Americans' 19% — and had to correct more of
them, which meant their productivity gain was *smaller*.

<!-- verified 2026-10-01 — source: https://news.cornell.edu/stories/2025/04/ai-suggestions-make-writing-more-generic-western -->

The average is not neutral. It is the average of whoever did the training, which means the centre is
somebody's specific taste wearing the costume of universality.

## What taste actually is

So if taste is not a gift, and if the average is an attractor that pulls on you and the machine alike,
what is the thing you are supposed to build?

The honest answer is that taste is **a position you can defend and revise** — and the two halves of that
are both load-bearing.

A defensible position is one where you can say why. Not "I like it" — why *this* over *that*, in terms
that survive being said out loud to someone who disagrees. If your reason collapses the moment someone
raises an eyebrow, you had a preference, not a judgment. Chapter 02's sycophancy findings are the
warning here: a model agrees with whoever is speaking, and if your reasoning does the same thing, you
have not escaped the average — you have just made it local.

A revisable position is one where evidence changes your mind. This is the half people get wrong when
they confuse taste with stubbornness. Having taste does not mean holding the line against all
objection. It means your position has reasons, and reasons can be attacked and can lose.

The two together are stricter than they sound. A position that cannot be defended is a mood. A position
that cannot be revised is an identity. **Taste is the narrow band between them, and most of the work is
staying in it.**

There is a useful test, and it comes directly from the fluency finding. When you evaluate a piece of
work — yours or someone else's — ask which of these you are actually responding to:

| What you might be feeling | What it usually is |
|---|---|
| "This is clean" | Fluency. You parsed it easily. Often a genuine virtue, sometimes an excuse for thin work. |
| "This is professional" | Typicality. It resembles what you have seen rewarded. |
| "This feels wrong" | Fluency failing. Sometimes hard work, sometimes just unfamiliarity — check which. |
| "I can say why it works" | The beginning of a judgment. Not proof, but the only place one starts. |

The first three are not worthless — fluency is real and audiences do reward it. The point is that the
first three happen *to* you automatically, and only the fourth is something you produce.

### Taste is connective

There is a second half to this that the "reject the average" framing misses, and it is the part that
makes taste useful rather than merely critical.

Taste is not only the ability to say no. It is the ability to notice that **two things belong together
because they share a quality** — and to see that they do, before anyone else has put them side by side.

Watch yourself do this and you will find it is not a comparison. You are not running down a checklist
of features. You are noticing a likeness: this paragraph has the same shape as that one, this hire
answers the question that project was really asking, this colour is doing the same job that the silence
was doing two pages ago. The two things are different in content and identical in *quality*, and the
recognition arrives before you can justify it.

That pre-verbal arrival is why taste gets mistaken for mysticism, and why the fluency trap is so
seductive. Both are fast, both feel like knowing. The difference is what happens next. Fluency stops at
"this is pleasing." Taste keeps going: it says *these two belong together*, which is a claim that can
be wrong, and can be tested by putting them together and seeing whether the likeness holds.

This is also why taste has to be practised inside **one domain**, at least at first. The connective
sense is trained by exposure within a field — you learn what a well-made thing in *your* medium looks
like, and the likenesses you can feel are likenesses among those things. That is chapter 03's territory.
Carrying a structure from one field into a completely different one is a separate skill, and it is
chapter 05's.

The machine is not useless here, and pretending otherwise would be dishonest. It is very good at
retrieving things that are *nominally* similar — same genre, same keywords, same category — and that can
hand you the raw material. What it cannot do is tell you the likeness is *worth* anything, because that
requires knowing what the category is for. A model can tell you that two paintings share a palette. It
cannot tell you that the shared palette is the reason they are both worth an afternoon — that judgement
is yours, and it is the one that gets tested when you put them together and someone says "so what?"

Which gives you the sharper version of the practice. **Collect things you believe belong together and
write down the quality they share.** Not the category they fall into — the quality. If you cannot name
it, you have a grouping, not a taste. If you can, you have something you can use: a standard that will
let you recognise the next one, in a form that someone else can argue with.

### Where taste is built

If taste is a position with reasons that can be revised, then it is built the same way any position
with reasons is built: by making claims, seeing them fail, and adjusting. That is a practice, and like
any practice it has a shape.

**First: commit in public, at low stakes.** Not "this is good" privately — you have to say it where it
can be responded to. The reason is not humility theatre; it is that an unstated judgment cannot be
falsified, and an unfalsifiable judgment cannot improve. State the reason, not just the verdict.

**Second: seek work that contradicts your fluency.** This is the hard one, because fluency is
pleasurable and you are wired to seek it. The practical version: deliberately spend time with work you
dislike but that competent people defend. If you cannot find the argument for it, you have learned
something about the limits of your own reasoning.

**Third: separate the judgement from the outcome.** A recruiter once told me they had learned to
distrust the candidate they *liked* most in the first minute — not because the reaction was wrong, but
because it was not information. Good work can fail commercially and bad work can succeed. If your taste
is calibrated only to outcomes, it is not taste; it is hindsight.

There is a fourth move, and it deserves its own warning rather than a bullet. The **design fixation**
research found that exposure to generated output constrains what designers produce afterwards —
generative AI exhibits the same fixation humans do, and creators who absorb the patterns start prompting
for more of the same, feeding the convergence.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2502.05870 -->

The practical upshot is blunt: **generate wide, choose narrow.** Use the machine for volume, because
volume is what it is good at, and then make the distinctive choice yourself — with reasons. The study
that found the individual gain and the collective loss is clear that the model lifts the floor. The
ceiling is not in the model; it is in whoever does the curating.

That reframes what the tool is for. If you use it to pick your answer, you have outsourced the only part
that was ever yours. If you use it to see the whole space of answers, and then reject most of it on
stated grounds, you have used it to make your taste *sharper* — because you are now rejecting a hundred
plausible things instead of the three you would have thought of alone.

## The honest caveats

**The strongest counter-evidence to this chapter is that AI made individual work better.** In the
Science Advances experiment, AI-assisted stories were rated more creative, better written and more
enjoyable, with the largest gains for the least creative writers.

<!-- verified 2026-10-01 — source: https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/ -->

If you are a strong writer, that finding is about the people you compete with, and it should worry you
more than any claim about machines replacing you. The floor is rising. Your entire defence is the
ceiling, which is exactly the thing the chapter says you have to build yourself.

**But I have to be honest about a gap in the evidence.** I found good research on the *mechanism* —
fluency makes the average attractive — and good research on the *failure mode* — AI-assisted work
converges. What I did not find is a strong peer-reviewed study measuring whether taste-specific training
actually improves someone's ability to leave the average. The practice I described above is reasoned
from the mechanism, not cited from an experiment. Treat it as a hypothesis with a plausible
foundation, which is weaker than the rest of this book's claims.

**The web-convergence figure is second-hand in this chapter.** The 44% decline is quoted from a design
scholar's detailed reading of the Goree et al. paper, because the ACM page itself was unreachable to me
and I will not cite a number I could not verify at source.

<!-- verified 2026-10-01 — source: https://www.jonkolko.com/phd/writing/25-07-12-homogenization-of-web-design -->

The paper is real and the number is stated the same way in the summary's quotation of the authors'
conclusion — but you should know the chain.

**The design-fixation finding is a preprint**, not peer-reviewed, and its framing is partly in tension
with the Goree result: it treats fixation as a property of generative AI, while the web study shows the
same convergence with no AI present.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2502.05870 -->

I have used it as a mechanism, not as proof that machines are the cause.

**One limit on the fluency research.** Reber and colleagues describe aesthetic pleasure as a function of
processing fluency — but I could only open the abstract, not the full paper, and the claim is stated
here no more strongly than the abstract supports.

<!-- verified 2026-10-01 — source: https://pubmed.ncbi.nlm.nih.gov/15582859/ -->

**And the uncomfortable structural point.** Chapter 02's own test asks whether a limit would disappear
because a model improved or because people agreed to something. Taste passes that test — it is a claim
about who decides what is good, not about model capability. But the same test exposes how *conditional*
taste is on a culture that keeps rewarding it. If every incentive keeps pointing at the fluent choice,
taste is a position you have to pay for repeatedly, and the chapter's advice assumes you are willing to.

That is a real assumption. Not everyone is in a position to pay.

## Do this today

1. **Under 30 minutes.** Take three pieces of work in your field you consider good and one you consider
   mediocre. Write one sentence per piece saying *why*, using terms someone could disagree with. If your
   reasons for the good three all reduce to "it feels right", you have found the edge of your taste.
2. **This week.** Find a piece of work you dislike that competent people defend. Write the strongest
   case for it you can — properly, not as a strawman. If you cannot, that is information about the
   limits of your own judgement, which is worth having.
3. **This quarter.** Pick one recurring decision you make (what to publish, what to hire, what to
   build). For the next month, write down your judgement *and* your reason *before* you learn the
   outcome. Then check the reasons, not the outcomes. Reasons that keep being wrong are the ones to
   revise; reasons that keep being right are the beginning of a position you can defend.

## Further reading

- **Ch. 02 of this book, *AI's Blind Spots*** — the four things machines cannot do, including the "no
  preference" finding this chapter builds on.
- **Ch. 04 of this book, *Story & Emotion*** — the next capability, and the one this chapter stops
  short of: taste selects what is worth making, and emotion is why anyone should care.
- **Ch. 05 of this book, *Cross-Domain Thinking*** — the neighbouring skill, and the easiest one to
  confuse with taste. This chapter is about connecting things *inside* a domain; 05 is about carrying a
  structure *across* one.
- Doshi & Hauser, *Generative AI enhances individual creativity but reduces the collective diversity of
  novel content* (Science Advances, 2024) — open access, and the single most useful study here:
  <https://pmc.ncbi.nlm.nih.gov/articles/PMC11244532/>
- Reber, Schwarz & Winkielman, *Processing Fluency and Aesthetic Pleasure* (2004) — why the average is
  genuinely attractive, which is the mechanism underneath the whole chapter:
  <https://pubmed.ncbi.nlm.nih.gov/15582859/>
- Agarwal, Naaman & Vashistha, *AI Suggestions Homogenize Writing Toward Western Styles* (CHI 2025) —
  read it for the direction of the pull, which is not neutral:
  <https://arxiv.org/abs/2409.11360>

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
