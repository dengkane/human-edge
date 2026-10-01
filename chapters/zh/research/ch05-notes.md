---
chapter: 5
chapter_file: ch05-cross-domain-thinking.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 0
---

# 中文研究笔记 — 第 05 章：跨领域思维

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch05-notes.md`](../../en/research/ch05-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **10 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。

## 来源清单（与英文版一致）

中文版引用与英文版完全相同的 5 个独立来源。分级与每项支持的论断见英文笔记。此处按 linter 要求列出全部 URL。

| # | URL |
|---|-----|
| 1 | https://pubmed.ncbi.nlm.nih.gov/17418112/ |
| 2 | https://cognition.aau.at/download/Publikationen/Bilalic/Bilalic_etal_2008a.pdf |
| 3 | https://arxiv.org/abs/2411.02348 |
| 4 | https://arxiv.org/html/2605.11258v1 |
| 5 | https://arxiv.org/abs/2401.13481 |

（另引用 `https://neurips.cc/virtual/2025/poster/121421` 作为与第 02 章的交叉引用。）

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| Einstellung effect | 定势效应 | 心理学标准译法（亦作"心向效应"）。首次出现保留德文原名，便于读者查找 |
| far transfer / near transfer | 远迁移 / 近迁移 | 迁移研究的标准译法，不用"远距离转移" |
| cross-domain analogy | 跨领域类比 | — |
| analogical reasoning | 类比推理 | — |
| reframe / reframing | 重构（问题/框架） | 与"换框架"交替使用；不用动名词"重构化" |
| frame | 框架 | 与第 02 章"没有城外"一致 |
| relational structure | 关系结构 | 类比研究的核心概念，区别于"表面特征" |
| mode collapse | 塌缩 | 与第 03 章译法一致 |
| stake / stake something | 赌注 / 下注 | 本章核心动词。与第 04 章的 cost（代价）区分：cost 是"投入的成本"，stake 是"押上的东西" |
| liability | 责任 | 在本章指"后果由谁承担"，与第 06 章的 responsibility 呼应 |

### 四个盲区命名

本章承接第 02 章的"**没有城外**"，沿用已定译名。第 02 章确立的四个盲区中文命名
（没有偏好 / 没有亲历 / 没有城外 / 不担后果）保持一致。

### 标题

英文 `Cross-Domain Thinking: Why AI Interpolates but Never Connects` →
中文 `跨领域思维：AI 只会内插，不会连接`

- `Interpolates` 沿用词表里的**内插**（与第 03 章、词表一致），`Connects` 译**连接**。
- "只会……不会……" 的中文对仗，保留了英文原句那个略显挑衅的断言语气。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文长复合句多数拆成中文短句。例："It is genuinely good at a specific part of this, and
  knowing which part is the difference between a colleague and a crutch." → "它在某个具体环节上确实擅长，
  而分清是哪个环节，就是"同事"与"拐棍"的区别。"
- **少用破折号。** 英文原文破折号极多，中文大量改为冒号、句号或独立分句。
- **去被动式**："The experts who escaped did so because something made the first answer unsatisfying" →
  "逃出去的那些专家之所以逃出去，是因为有东西让第一个答案变得足够令人不满意"。
- **避免名词化**："the willingness to act on a reframe you cannot prove" → "愿意在一个你无法证明的重构上行动"。
- **避开译文腔词**：未使用"作为一个""进行""在……情况下""不仅……而且"。
- 特别注意：文中那句被刻意加粗的核心句 "It fails at the decision to look" 译为"
  **失败的不是"连接"，而是"决定去看"**"——引号内保留"决定去看"这个略显生硬的短语，因为它是全章的关键区分，
  写成流畅的中文反而会模糊它与"能力"的对比。
- `the squares` 译"那些格子"（棋盘语境），不是"方块"。

### 例子是否本土化

**没有替换。** 本章案例（国际象棋定势实验、TACL 类比迁移、生物医学跨领域类比、800+ 人想法实验）
在中文语境下同样成立、可查。

- 保留英文：**TACL**、**LLM**、**AI**、**Cloudflare**（技术限制说明）
- 人名保留原文拼音形式：Bilalić、Stevenson、Shen、Ashkinaze 等，在斜体书名/来源行里保持英文拼写
- 期刊名保留英文：**Cognitive Psychology**、**Cognition**

**一处需留档的取舍：** 英文正文用 "the chess research" 泛指，不点名作者；中文同样不点名正文，
仅在延伸阅读里给出姓名，与英文一致。**论断无增减。**

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括四处自我披露：
1. AI 在跨领域上做得好（本章的反证据）；
2. 远迁移失效可能是暂时的、且有日期；
3. 定势效应随专业度减弱（对本章的双向影响）；
4. Ashkinaze 那项发现与第 03 章方向相反，且作者承认第 03 章说得太肯定。

第 4 条尤其重要：**英文版在此处主动承认自己另一章的表述过度断言**，中文如实照译，不做缓和。

## 待办

- [ ] 第 06 章写完后，回填本章与第 06 章的交叉引用
- [ ] 若日后能打开 INFORMS 那篇"LLM vs 人类战略类比推理"的直接对比研究，补入为来源
