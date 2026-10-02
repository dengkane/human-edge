---
chapter: 13
chapter_file: ch13-be-the-one-who-presses-enter.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 4
---

# 中文研究笔记 — 第 13 章：结语

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch13-notes.md`](../../en/research/ch13-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **7 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- **2026-10-02 风格重写：** 英文版按 `AGENTS.md` 的 *Story first* 标准重写（开篇改用"一份改了好几周、却一直没发出去的文档"的场景），中文随之重写，而非逐句搬运旧译文。论断、来源、反面证据一律未变；中文正文 4608 字符（区间低段，结语刻意偏短）。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。
- 本章是**结语**，正文约 2,250 字（正文章节约 3,500 字），因此 `check-chapter.sh` 会报
  "正文偏短"。**这是预期警告，已在 front matter 的注释里写明原因，不得靠注水"修复"。**

## 契约：不引入新框架

`chapters/en/README.md` 对本章的约束是全书最严的一条结构规则：

> 13 introduces **no new framework**. It closes the argument and hands the reader the last move.
> **If you find yourself building a model in 13, it belongs in 12.**

中文版严格遵守：**没有任何新模型、新分类、新步骤体系**。七个小节里，前四节是收束（回顾、剩下的一件事、
长远证据、最后一步），后三节是全书统一的收尾三件套。用 `grep` 核查过，全文没有
"framework / pillar / four stages / the model is" 一类造框架的措辞。

## 来源清单（与英文版一致）

| # | URL |
|---|-----|
| 1 | https://doi.org/10.1037/0033-295X.102.2.379 |
| 2 | https://doi.org/10.1037/0022-3514.67.3.357 |
| 3 | https://doi.org/10.1037/0033-2909.121.1.133 |
| 4 | https://doi.org/10.1525/collabra.37122 |
| 5 | https://doi.org/10.1098/rsos.221574 |

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| epilogue | 结语 | 章节标题已定 |
| regret | 后悔 | |
| action / inaction | 作为 / 不作为 | **本章核心对立**，两词全程固定。哲学与行为科学中"作为/不作为"是通行对照，不用"行动/不行动"（后者偏动词、不成对） |
| errors of commission / omission | 做错的事 / 漏做的事 | 与上一条呼应；法律与伦理学通行译法 |
| counterfactual thinking | 反事实思维 | 标准译法 |
| contrast effect | 对比效应 | |
| psychological ownership | 心理所有权 | 未在本章使用（见下） |
| agency / answerable | 能动性 / 为……负责 | 本章反复出现的"answerable for the result"译为"为结果负责"，而非"可问责"（后者偏制度语域） |
| press enter | 按下回车键 | 标题与全章末句的隐喻核心，动作化、口语化 |
| deskilling | 去技能化 | 与第 11 章一致 |

### 标题与末句

英文 `Epilogue: Be the One Who Presses Enter` → 中文 `结语：做那个按下回车键的人`

末句 `You are the one who presses enter.` → "**你，就是那个按下回车键的人。**"

- 加了一个逗号（"你，"），让这个短句在中文里有顿挫感，作为全书的最后一句。
- 用"做那个……的人"而不是"就是那个会按下回车的人"：前者是**身份**的宣告（这正是全章论点——
  优势不在于能力，而在于"成为那个负责的人"），后者只是描述一个将来会发生的动作。

### 三处关键句的译法

1. `a model's output costs it nothing` → "**模型的产出对它自己没有任何代价**"
   这是全书十二次复现的那个根，译文必须和后文各章的"代价"语汇保持同一词根。
2. `Deciding cannot be delegated, and it cannot be avoided. It can only be postponed.`
   → "**决定不能被外包，也不能被回避。它只能被推迟。**"
   三个"不"的排比保留，句号断开而非连成长句——这是全章最重的一句。
3. `Nothing about waiting feels like a decision.`
   → "**等待之中，没有任何东西看起来像一个决定。**"
   保留"看起来像"的意味：不是"不像决定"，而是"看起来不像"——强调主观上的不可察觉。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 结语本就句子偏长，中文进一步拆短以保留收束时的节奏。
- **保留 blockquote 原样。** 三处 blockquote（1995 综述、1994 原始研究）逐字翻译，加粗位置与英文一致。
- **四个"工具指向同一瞬间"的 bullet 逐条对应**，不合并——它们是全书十二章的回收清单。
- **去被动、去名词化。**
- **避免译文腔**：未使用"作为一个""进行""在……的情况下""不仅……而且""值得注意的是"。
- 数字：03–12 的章号在正文里用半角数字，与英文一致。
- 英文 `Sit with the asymmetry` 译"停一下，体会这个不对称"，与前面各章统一。

### 例子是否本土化

**没有替换。** Gilovich & Medvec 的后悔研究、两项重复验证、Roese 的反事实综述，在中文语境下同样成立、可查。

- 保留英文：**JPSP**、**Psychological Bulletin**、**Collabra**、**Royal Society Open Science**
- 人名保留英文：Gilovich、Medvec、Yeung、Feldman、Fillon、Laroche、Richardson、Roese、Whittier
- 机构名：Chicago 译"芝加哥"

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括英文版三处自我披露：
1. **后悔证据方向真实、细节不可靠**：大型预注册重复验证三个研究支持但"效应更弱"，第四个失败；
   现场重复验证的交互模式与先前"不一致"；
2. 本书所有证据都来自别的领域，机制靠论证迁移而非测量，作者从未测量过任何读者；
3. "按下回车键"可能被误用——它不是跳过决定的许可。

第 1 条尤其重要，中文如实照译，不做缓和。

## 待办

- [ ] **全书 13 章中英双语均已完稿。** 后续工作是收尾通读（back-matter pass）：
      - 回填各章之间的交叉引用（ch01–ch12 多处 TODO）
      - 两个 README 的"付费层级"表述需复核（13 章现已全部开源）
      - `REPO_STRUCTURE.md` 里的章节范围说明（目前写的是 ch01 到 ch13）
- [ ] 结语的"偏短"警告是预期行为，勿修
