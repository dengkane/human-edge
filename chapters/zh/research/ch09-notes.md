---
chapter: 9
chapter_file: ch09-second-brain-first-brain.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 4
---

# 中文研究笔记 — 第 09 章：第二大脑与第一大脑

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch09-notes.md`](../../en/research/ch09-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **10 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。
- **英文版对本章的取证标准主动降级并披露**（见下），中文如实照译。

## 来源清单（与英文版一致）

| # | URL |
|---|-----|
| 1 | https://doi.org/10.1126/science.1207745 |
| 2 | https://doi.org/10.1177/17470218211008060 |
| 3 | https://doi.org/10.1111/j.1467-9280.2006.01693.x |
| 4 | https://doi.org/10.1037/0033-2909.132.3.354 |
| 5 | https://doi.org/10.3390/soc15010006 |
| 6 | https://doi.org/10.1016/j.tics.2016.07.002 |

## 取证标准的重要说明（必须与英文版一致地披露）

本章的发现来自 **OpenAlex 与 Crossref API 按 DOI 取回的作者摘要**，而非打开论文全文。
原因是：本次调研期间 **PMC（reCAPTCHA）、PubMed（要求 cookie）、Europe PMC（Cloudflare 403）全部封堵**，
而 Sage / Elsevier / Science / APA / MDPI 的出版方页面同样不可用——这些站点在本项目更早的章节里
曾经可用。

- **是**：作者本人撰写的摘要原文，由出版方随 DOI 存缴；Grinschgl 一篇在 OpenAlex 与 Crossref 两处
  返回**相同文本**，构成独立交叉验证。
- **不是**：≠ 打开过论文。没有看到任何方法学章节、表格或图。

英文版把这一点写进了「诚实的保留意见」，并明说**若只核查一章的引注，就核查这一章**。中文照译。

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| second brain | 第二大脑 | 词表已定 |
| first brain | 第一大脑 | 与"第二大脑"成对，全章固定 |
| cognitive offloading | 认知外包 | **词表原标注为"Ch. 11"，但本章先用到**，见下 |
| transactive memory | 交互记忆 | 心理学标准译法 |
| retrieval / retrieve | 提取 | 认知心理学标准译法，全章固定 |
| retrieval practice | 提取练习 | |
| testing effect | 测验效应 | |
| retention / retention interval | 保持 / 保持期 | 记忆心理学标准译法 |
| spacing / distributed practice | 间隔 / 分散练习 | |
| pointer vs content | 指针 / 内容 | 本章的核心区分，两个词全程固定 |

### 词表指针需要修正

`glossary.md` 把 `Cognitive offloading | 认知外包` 标注为 **Ch. 11**，但**本章 09 才是全书第一次真正用到
这个概念的地方**（第 11 章的标题里虽然出现"外包思考"，但正文的机制讲述在本章）。

中文版仍按词表固定译"认知外包"，但已在 `glossary.md` 中把该条的归属改为 **Ch. 09**，以免后续章节
以为这是 11 章首次引入。

### 标题

英文 `Your Second Brain and Your First Brain` → 中文 `第二大脑与第一大脑`

- 沿用 `chapters/zh/README.md` 索引里已定的名字。
- 无嵌套引号，`title` 字段无需转义。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** "The pitch is seductive and it is everywhere." → "这个卖点很诱人，而且到处都是。"
- **保留 blockquote 原样。** 五处 blockquote（2011 发现、外包代价 ×3、测验效应、间隔规则）逐字翻译，加粗位置与英文一致。
- **两套系统对照保留结构。** "提取系统式做法"那段 blockquote（指针 / 答不出的问题 / 6 周后复查）
  逐块对应，不合并、不缩写——它是全章唯一可操作的样例。
- **去被动、去名词化。** "the externalising does to the internal part" → "外化对**内部**那部分做了什么"。
- **避免译文腔**：未使用"作为一个""进行""在……的情况下""不仅……而且""值得注意的是"。
- 英文 `Sit with that` / `Sit with the difference` 一律译为"停一下，体会……"或"停一下想一会儿"，不用"请仔细考虑"。

### 例子是否本土化

**没有替换。** Sparrow 的搜索记忆实验、Grinschgl 的 Pattern Copy Task、Roediger & Karpicke 的
文章回忆测验、Cepeda 的元分析，在中文语境下同样成立、可查。

- 保留英文：**App**、**PDF**、**OpenAlex**、**Crossref**、**PMC**、**PubMed**、**Europe PMC**、
  **DOI**、**API**、**QJEP**
- 人名保留英文：Sparrow、Liu、Wegner、Grinschgl、Papenmeier、Meyerhoff、Roediger、Karpicke、Cepeda
- 章名首次出现给中文并附英文：**交互记忆**（transactive memory）

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括英文版四处自我披露：
1. **本章立在摘要之上**，取证标准弱于第 07 章，建议优先核查本章；
2. 外包研究针对的是屏幕与搜索引擎，不是语言模型，把它套到 LLM 上是**往更需要担心的方向外推**；
3. 唯一一项直接关于 AI 的研究很弱（相关性、横断面、可能反向因果），收录是为诚实而非为论证；
4. 本章只负责"建"，代价的完整论证属于第 11 章；若本章读起来像"小心一点"，就是失败。

第 1 条尤其重要，中文如实照译，不做缓和。

## 待办

- [x] `glossary.md` 的 `Cognitive offloading` 归属已从 Ch. 11 改为 Ch. 09
- [ ] 若日后 PMC / Europe PMC 恢复可用，应打开 Grinschgl 全文，把 Experiments 2 与 3 的差异
      从"摘要级"升级为"全文级"，并回填英文版
- [ ] 第 11 章若要以"外包的代价"为主线，本章对外包证据的使用须停留在"这笔交易存在"，
      把定价权留给 11
- [ ] 第 10 章不得重讲本章（见 `chapters/en/README.md` 边界表）
