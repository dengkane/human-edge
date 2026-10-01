---
chapter: 4
chapter_file: ch04-story-and-emotion.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 0
---

# 中文研究笔记 — 第 04 章：故事与情感

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch04-notes.md`](../../en/research/ch04-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **16 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。

## 来源清单（与英文版一致）

中文版引用与英文版完全相同的 6 个独立来源（英语版 sources_kept 计 6，另含第 02 章的剑桥来源复用）。
此处按 linter 要求列出全部 URL。

| # | URL |
|---|-----|
| 1 | https://www.eurekalert.org/news-releases/1088883 |
| 2 | https://arxiv.org/html/2510.24011v2 |
| 3 | https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds |
| 4 | https://www.nature.com/articles/s44271-025-00387-3 |
| 5 | https://www.mcm.uni-wuerzburg.de/fileadmin/06110300/2024/Pdfs/Green___Appel__2024__Advances_Preprint.pdf |
| 6 | https://www.eurekalert.org/news-releases/1138206（与第 02 章共用：AI 写作"直白"的发现） |

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| narrative transportation | 叙事传输 | 心理学标准译法，不用"叙事沉浸"——"传输"保留了 transport 的"被带进去"义 |
| main character | 主角 | 与"角色"交替使用，视上下文 |
| compassion fatigue | 共情疲劳 | — |
| perceived authenticity | 感知到的真诚 | 不用"真实性"——authenticity 在此指"对方是否真心投入"，不是真假之分 |
| speech act | 言语行为 | 语用学标准译法 |
| disclosure | 披露 | 指"披露 AI 作者身份" |
| resonance | 共鸣 | 本章核心名词，与"情感共鸣（emotional resonance）"词条统一 |
| cost / stake | 代价 / 赌注 | 两者在本章分工明确：cost 是"投入的成本"，stake 是"押上的东西" |

### 四个盲区命名

本章开篇即接续第 02 章的"**没有亲历**"，沿用已定译名。第 02 章确立的四个盲区中文命名
（没有偏好 / 没有亲历 / 没有城外 / 不担后果）保持一致。

### 标题

英文 `Story & Emotion: Why AI Can Write a Love Letter but Not a Heartbeat` →
中文 `故事与情感：AI 能写情书，但写不出心跳`

- 副标题基本直译，因为英文的"情书 / 心跳"对仗在中文里同样成立，且已是该章在 README 索引里的名字。
- 章内 H1 用 `# 04. AI 能写情书，但写不出心跳`，比标题行短，与前三章的处理一致。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文长复合句多数拆成中文短句。例："Those two findings are the reason this chapter has
  to be built carefully, because the obvious way to reconcile them — 'people can't tell' — is wrong."
  → "这两个发现，就是这一章必须小心搭建的原因——因为调和它们最显而易见的那个办法（"人分辨不出来"）是错的。"
- **少用破折号。** 英文原文破折号极多（本章尤其），中文大量改为冒号、句号或独立分句。
- **去被动式**："the response labelled human was rated more supportive" → "标为"人"的那份被评为更有支持性"。
- **避免名词化**："that incompleteness is not a flaw in the telling" → "那个"没写完"不是叙事的缺陷"。
- **避开译文腔词**：未使用"作为一个""进行""在……的情况下""不仅……而且"。
- 特别注意：`Hold this chapter loosely` 译为"我对这一章的态度是放宽的"，而非直译"松散地持有这一章"。
- 文中引用的研究者原话（"AI doesn't get tired"、"AI for creation, not connection"）**译成中文并保留原句
  的语义**，未加英文原文，因为中文正文里嵌英文会打断阅读；但求"用于创造，不用于连接"这类关键短语
  译法与英文措辞严格对应。

### 例子是否本土化

**没有替换。** 本章案例（危机干预实验、九项研究 6,000+ 参与者、261 名参与者六种交际行为、
78.6% 偏好率）在中文语境下同样成立、可查。

- 保留英文：**Nature Human Behaviour**、**IUI '26**、**Communications Psychology**、
  **ChatGPT**、**AI**
- 机构名首次出现给中文全称：多伦多大学士嘉堡分校（UTSC）、希伯来大学、哈佛大学、德州大学
- 人名保留英文原文的处理：英文正文用 "the lead author"、"the study's author" 等泛称，未点名；
  中文同样不点名，保持一致

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括四处自我披露：
1. AI 共情胜过人类专家（本章开头的反证据）；
2. "偏好人类来源"可能是会变的社会规范；
3. 人类来源研究变的是**标签**而非亲历，因此"共鸣需要亲历"是间接支持；
4. 78.6% 那个数字来自摘要而非全文。

另：英文正文有一处刻意保留的重复强调（`AI for creation, not connection` 同时出现在正文与保留
意见里），中文同样保留——这是英文版有意的结构，不是疏漏。

## 待办

- [ ] 第 05 章写完后，回填本章与第 05 章的交叉引用
- [ ] 若日后能打开 Nature 上 Wenger 等论文的完整页面，把"摘要"这条保留意见去掉
