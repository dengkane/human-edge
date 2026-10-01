---
chapter: 2
chapter_file: ch02-ais-blind-spots.md
researched: 2026-10-01
sources_kept: 7
sources_rejected: 0
---

# 中文研究笔记 — 第 02 章：机器学不会的四件事

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch02-notes.md`](../../en/research/ch02-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **14 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对，两份文件最后 5 行完全相同）。
- 译文**不重新验证任何论断**。

## 来源清单（与英文版一致）

中文版引用与英文版完全相同的 7 个独立来源。分级与每项支持的论断见英文笔记。此处按 linter 要求列出全部 URL。

| # | URL |
|---|-----|
| 1 | https://neurips.cc/virtual/2025/poster/121421 |
| 2 | https://arxiv.org/abs/2310.13548 |
| 3 | https://arxiv.org/abs/2505.13995 |
| 4 | https://www.cambridge.org/core/journals/judgment-and-decision-making/article/bot-or-not-can-people-tell-the-difference-between-stories-written-by-a-human-or-by-an-ai-system/45E6DC0BB90AA648654D5AE243F6C667 |
| 5 | https://www.eurekalert.org/news-releases/1138206 |
| 6 | https://research.tudelft.nl/en/publications/four-responsibility-gaps-with-artificial-intelligence-why-they-ma/ |
| 7 | https://pmc.ncbi.nlm.nih.gov/articles/PMC11153269/ |

## 翻译中的判断

### 术语

属于本书核心概念的，按 [`../../../glossary.md`](../../../glossary.md)：

| 英文 | 中文 | 备注 |
|------|------|------|
| taste | 审美 / 品味 | 沿用词表 |
| judgment | 判断力 | — |
| cross-domain thinking | 跨领域思维 | 沿用词表 |
| sycophancy | 谄媚 | 中文 AI 圈通用译法 |
| moral agent | 道德主体 | 哲学标准译法，不用"道德代理人" |
| responsibility gap | 责任缺口 | 不用"责任差距" |
| accountability | 问责 | 与 culpability（过错）区分 |
| preference model | 偏好模型 | RLHF 语境 |
| interpolation | 内插 | 见词表（第 05 章用） |

**新增术语（建议回填词表）：**

- **Artificial Hivemind → 人工蜂群思维**。该词是论文自创的专名。首次出现时保留英文原词并加引号，便于读者查找原文。
- **explicitness → 直白**。这是本章的关键对立面概念（直白 vs 含蓄）。不用"明确性"——那是名词化的译文腔，且丢掉了"读起来更省力"的意思。
- **no preference / no experience / no outside / no commitment → 没有偏好 / 没有亲历 / 没有城外 / 不担后果**。四个盲区的固定表述，见下。

### 四个盲区的中文命名

英文用四个对称的 `no X`，中文如果直译成"无偏好/无经验/无框架外/无承诺"会非常生硬。处理如下：

| 英文 | 中文 | 理由 |
|------|------|------|
| No preference | **没有偏好** | 保持，与后三个的句式一致 |
| No experience | **没有亲历** | 用"亲历"而非"经验"——正文里"经验"另有所指（职业经验、experience premium），"亲历"精确对应"lived through it" |
| No outside | **没有城外** | 英文 `outside` 指"框架之外"。直译"没有外部"不可读。借"城外"的意象，保留"在围墙内"的空间感；正文首次出现时解释了含义 |
| No commitment | **不担后果** | 英文 `commitment` 在此兼指"承诺"和"承担后果"。中文取后者，因为它才是本章论证的落点（"模型不付代价"），与"没有偏好"并列也通顺 |

这四个表述**在正文与表格中统一使用**，第 05、06 章引用时请保持一致。

### 标题

英文 `AI's Blind Spots: Four Things Machines Can't Learn` → 中文 `AI 的盲区：机器永远学不会的四件事`

- 副标题没有直译 `Four Things Machines Can't Learn`，而是把 `Things` 具化为**四件事**，把 `Can't Learn` 译为**永远学不会**——中文需要这个"永远"来传达英文 `can't` 的结构性意味（不是"学不会"，是"学不会"这件事不取决于努力）。
- 章内 H1 用了 `# 02. 机器学不会的四件事`，比标题行短，与英文版 `# 02. Four Things Machines Can't Learn` 的处理一致。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文的长复合句多数拆成中文短句。例："Not because it would be too polite, but because
  having a standard means some answers are ruled out." → "不是因为它太客气，而是因为**有标准就意味着某些答案是出局的**。"
- **少用破折号。** 英文原文破折号极多（这是本书英文版的风格特征）。中文里大量改为冒号、句号或独立分句；仅在确实需要插入补充时保留少数几处。
- **去被动式**："widely agreed that autonomous systems today cannot be moral agents" → "目前普遍认同，自主系统今天无法成为道德主体"。
- **名词化拉回动词**："preference is for explicitness" → "人们偏好的是直白"。
- **避开译文腔词**：未使用"作为一个""进行""在……的情况下""不仅……而且"。特别注意英文 `reframing` 没有译成"重新框架化"（名词化），而是"换框架"/"重构问题"。

### 例子是否本土化

**没有替换。** 本章引用的全部是具体研究、机构与数字（NeurIPS、arXiv、剑桥大学出版社、
EurekAlert、TU Delft、PMC），在中文语境下同样成立、可查。按 `chapters/zh/README.md` 的规定：

- 保留英文：**RLHF**、**Constitutional AI**、**Artificial Hivemind**（专名）、**ChatGPT**、
  **Helvetica**、**AI Literacy Scale**
- 机构与人名首次出现给中文并附原文：Deena Weisberg（首次出现保留英文名，因为那是引语归属）
- **Judgment and Decision Making**、**NeurIPS 2025**、**Minds and Machines** 等期刊会议名保留英文

## 与英文版的差异

**无内容差异。** 本章中文版不增不减任何论断。

有一处**表述上的取舍需要留档**：英文在"诚实的保留意见"里写 "I could not open that
counter-argument directly and have not cited it"（我无法直接打开那篇反论，因此没有引用它），
指的是虚无论立场那篇（Tigard 2021b）。中文如实照译，保持这条自我披露。

另：英文正文有一处笔误级别的换行（"four interconnected ones — / gaps in culpability…"），
中文版不受影响，正常排版。

## 待办

- [x] "人工蜂群思维 / Artificial Hivemind"、"直白 / explicitness"、谄媚、道德主体、责任缺口等已补入
      `glossary.md`（本次提交一并完成）
- [ ] 第 05、06 章写作时，沿用本章确立的四个盲区中文命名
- [ ] 第 03 章写完后，回填本章与第 03 章的交叉引用
