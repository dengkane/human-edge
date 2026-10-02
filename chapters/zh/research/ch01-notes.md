---
chapter: 1
chapter_file: ch01-the-mirror.md
researched: 2026-10-01
sources_kept: 15
sources_rejected: 0
---

# 中文研究笔记 — 第 01 章：照妖镜

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch01-notes.md`](../../en/research/ch01-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 来源清单（与英文版一致）

中文版引用与英文版完全相同的 15 个来源。分级、每项支持的论断与反面证据见英文笔记
[`../../en/research/ch01-notes.md`](../../en/research/ch01-notes.md)。此处仅按 linter 要求列出全部 URL。

| # | URL |
|---|-----|
| 1 | https://www.dallasfed.org/research/economics/2026/0224 |
| 2 | https://www.bls.gov/opub/ted/2025/ai-impacts-in-bls-employment-projections.htm |
| 3 | https://digitaleconomy.stanford.edu/news/canariesaug26/ |
| 4 | https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-27.html |
| 5 | https://www.hiringlab.org/2025/07/30/the-us-tech-hiring-freeze-continues/ |
| 6 | https://www.hiringlab.org/2025/07/30/experience-requirements-have-tightened-amid-the-tech-hiring-freeze/ |
| 7 | https://reglab.stanford.edu/publications/hallucination-free-assessing-the-reliability-of-leading-ai-legal-research-tools/ |
| 8 | https://arxiv.org/abs/2507.09089 |
| 9 | https://arxiv.org/abs/2211.03622 |
| 10 | https://arxiv.org/abs/2507.15821 |
| 11 | https://www.microsoft.com/en-us/research/publication/the-impact-of-generative-ai-on-critical-thinking-self-reported-reductions-in-cognitive-effort-and-confidence-effects-from-a-survey-of-knowledge-workers/ |
| 12 | https://www.nber.org/papers/w33777 |
| 13 | https://www.nber.org/papers/w31161 |
| 14 | https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-25.html |
| 15 | https://hiringlab.indeed.com/2026/07/08/ai-and-job-postings-from-destruction-to-creation/ |

## 与英文版的关系

- **28 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 译文**不重新验证任何论断**。
- 页脚五行保持英文，逐字符一致。

## 翻译中的判断

### 术语

全部按 [`../../../glossary.md`](../../../glossary.md)：

| 英文 | 中文 | 备注 |
|------|------|------|
| codified knowledge | 编码知识 | 本书首次引入，建议补入词表 |
| tacit knowledge | 隐性知识 | 同上；"不可编码"在正文中用作同义描述 |
| experience premium | 经验溢价 | — |
| robo-advisor | 智能投顾 | 不是"机器人顾问" |
| hallucinations / hallucination rate | 幻觉 / 幻觉率 | 中文 AI 圈的通用译法 |
| critical thinking | 批判性思考 | 不是"批评性思维" |

**"编码知识／隐性知识"这一对是新术语**，`glossary.md` 里目前没有。写作时按上表统一，并应回填词表
（已在下面的"待办"里记下）。

### 标题

英文 `The Mirror: Which "Pseudo-Skills" Are Being Exposed?` → 中文 `AI 照妖镜：哪些"伪能力"正在被淘汰？`

- `The Mirror` 直译为"镜子"太平，且丢失了"照出真相"的意味。用**照妖镜**——功能对等：照出本来面目。
- `Pseudo-Skills` → **伪能力**，保留引号，因为英文的引号在这里标记了"被称其为技能、实则是伪装"的反讽。
- `Are Being Exposed` → **正在被淘汰**。英文侧重"被揭穿"，中文若直译"被揭穿"会与章节内容（就业市场）
  脱节；"被淘汰"更贴合读者实际感受，也保留了被动意味。
- 章内 H1 用了 `# 01. 照妖镜`，比标题行短——与英文版 `# 01. The Mirror` 的处理一致。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。**英文用冒号和破折号组织的长句，中文多数拆成独立短句。例如
  "In February 2020, the market was theirs." 拆成
  "2020 年 2 月，市场是他们的。"
- **短段落。**按 `AGENTS.md` 的 Story first 要求，中文同样以两三个短句为一段，信息密度高的
  长段拆成多个段落。
- **少破折号。**英文原文破折号很多，中文里压缩为冒号、句号或独立分句。保留了少数几处，用在
  确实需要插入补充说明的地方。
- **去被动式。**"the failure is no longer hypothetical — and no longer invisible to the client"
  → "这种失效不再是假设，客户也已经看得见"。
- **名词化拉回动词。**"adjustment is showing up primarily in employment" → "调整体现在就业上"。
- **避开译文腔词。**未使用"作为一个""进行""在……的情况下""不仅……而且"这类结构。

### 例子是否本土化

**没有替换。**英文版引用的全部是具体的研究、机构与数字（达拉斯联储、斯坦福、Indeed、BLS、
NBER、METR），这些在中文语境下同样成立、也同样可查。按 `chapters/zh/README.md` 的规定，
产品名、机构名、英文标识符不翻译：

- 保留英文：**ChatGPT**、**Android / Java / .NET / iOS / Web**（岗位方向名）
- 机构首次出现给中文全称并附英文：达拉斯联邦储备银行、美国人口普查局、美国劳工统计局、
  斯坦福数字经济实验室、耶鲁预算实验室
- **METR** 保留原文缩写（正文以英文名出现，因为那是论文名的一部分）

## 与英文版的差异

**一处，且是修正：**翻译时我一度给"耶鲁预算实验室"那段加了 `verified` 标记。英文版明确写着
这个来源**没能打开**，只有搜索片段。用 `verified` 标记它等于声称读过——正是本书批评的行为。
标记已删除。中文版与英文版在这一段上都**不带标记**，与事实一致。

除此之外，中文版不增不减任何论断。

## 待办

- [x] "编码知识 / codified knowledge"、"隐性知识 / tacit knowledge"、"经验溢价 / experience premium"
      已补入 `glossary.md`（本次提交一并完成）
- [ ] 第 02 章写完后，回填本章与第 02 章的交叉引用
