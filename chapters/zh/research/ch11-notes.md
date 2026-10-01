---
chapter: 11
chapter_file: ch11-the-cost-of-offloading.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 5
---

# 中文研究笔记 — 第 11 章：外包思考的代价

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch11-notes.md`](../../en/research/ch11-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **13 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。
- 本章是全书取证最强的一章：**三个关键来源读了全文**（Bainbridge 1983、Casner 2014、Dahmani & Bohbot 2020），
  见下。

## 取证标准（全书最强的一章，必须记录）

英文版用 `pypdf`（`pip install --target` 装到临时目录，因为系统 Python 受外部管理）抽取了三份公开托管
PDF 的**全文**，再从中取引文：

| 来源 | 获取方式 | 深度 |
|------|---------|------|
| Bainbridge 1983 | `ckrybus.com/.../Bainbridge_1983_Automatica.pdf` | **全文，5 页** |
| Casner 等 2014 | `gwern.net/doc/technology/2014-casner.pdf` | **全文，11 页** |
| Dahmani & Bohbot 2020 | McGill 作者版 PDF（Nature 开放获取论文） | **全文，14 页** |

Kosmyna 等（MIT）与其评论，经 OpenAlex 按 DOI 取回摘要——该文是**预印本、未经同行评审**，
而这正是那篇评论所质疑的一点。

**注意这个不对称，因为它就是本章的论点：** 五项关键发现里有三项来自 **1983、2014、2020**——
早于本书所讲的那个东西。这个领域四十年前就用全文级证据知道：把任务自动化，会损伤底下的认知技能，
同时保住表层的物理技能。**AI 争论没有发现这件事。它是重新发现了这件事。**

## 来源清单（与英文版一致）

| # | URL |
|---|-----|
| 1 | https://doi.org/10.1016/0005-1098(83)90046-8 |
| 2 | https://doi.org/10.1177/0018720814535628 |
| 3 | https://doi.org/10.1038/s41598-020-62877-0 |
| 4 | https://doi.org/10.48550/arxiv.2506.08872 |
| 5 | https://doi.org/10.48550/arxiv.2601.00856 |
| 6 | https://doi.org/10.1007/s40685-014-0014-8 |

## 一条被拦下的引注缺陷（必须记录）

英文初稿里 Casner 那篇的 DOI，我**凭印象写错了**（`10.1177/0018720814545105`）。
它根本不存在于 Crossref。发布前逐条核对时发现，并从**抽取出的 PDF 正文**里取出印刷的 DOI
`10.1177/0018720814535628`（Crossref 返回标题 "The Retention of Manual Flying Skills in the
Automated Cockpit"，Human Factors，2014）。

这条记录值得留档，因为它是**靠流程抓住的，不是靠细心**：每个 DOI 都要同时满足"能解析"和"标题对得上"，
两个条件缺一不可。第 10 章那次是两个 DOI 都能解析、但指向错论文；这次是那个 DOI 压根不存在——
两种都要防。

中文版**只译定稿版本**，不含任何中间稿痕迹。

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| offloading / cognitive offloading | 外包 / 认知外包 | 词表已定；本章沿用第 09 章确立的译法 |
| deskilling | 去技能化 / 技能流失 | 正文用"退化""失效"等具体表述，避免堆砌术语 |
| automation | 自动化 | |
| physical skill | 物理技能 | 与"认知技能"成对，全章固定 |
| cognitive skill | 认知技能 | **本章的核心对立**，两词全程不互换 |
| cognitive layer / physical layer | 认知层 / 物理层 | 与上一条呼应 |
| engagement / actively engaged | 参与 / 持续主动地参与 | Casner 结论里的关键变量 |
| vigilance | 警觉 | 工业心理学标准译法 |
| hippocampal-dependent spatial memory | 海马体依赖的空间记忆 | |
| cognitive debt | 认知负债 | 英文原文术语，中文沿用（该词出自 MIT 那篇） |
| ownership (of essays) | 归属感 | |
| retention | 保持 | 与第 09 章一致 |
| pre-registration / preprint | 预注册 / 预印本 | |
| instrumentation | 仪表 | 本章末段的隐喻核心，译"仪表"而非"工具" |

### "反讽"的译法

`Ironies of Automation` 通译《自动化的反讽》。Bainbridge 在文中亲自给出了定义：
"combine of circumstances, the result of which is the direct opposite of what might be expected"
（情境的组合，其结果与你可能预期的正好相反）。

中文沿用通译名，并在正文中点明这层"与预期正好相反"的含义——因为本章的论证正是建立在这个
"结果与预期相反"的结构上，而不只是一个好听的标题。

### 标题

英文 `The Cost of Offloading: What You Lose When AI Does Your Thinking` →
中文 `外包思考的代价：当 AI 替你思考，你失去了什么`

- 沿用 `chapters/zh/README.md` 索引里已定的名字。
- 无嵌套引号，`title` 字段无需转义。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** "Forty years later, the same structure is applied to work that used to feel like
  thinking." → "四十年后，同样的结构被套在了那些过去感觉像'思考'的工作上。"
- **保留 blockquote 原样。** 八处 blockquote（Bainbridge ×2、Casner ×2、Dahmani ×2、MIT ×2、
  Roth ×1）逐字翻译，加粗位置与英文一致。
- **`The hand stays. The head goes.`** 是全章最重要的一句对仗，译为
  "**手还在。脑子走了。**"——保留短句节奏和并列结构。
- **单独成行的金句保留独立成行**："You cannot supervise your own judgement with the part of your
  judgement you outsourced." → "你没法用你已经外包出去的那部分判断力，来监督你自己的判断力。"
- **去被动、去名词化。**
- **避免译文腔**：未使用"作为一个""进行""在……的情况下""不仅……而且""值得注意的是"。
- 英文 `Sit with that` / `Sit with how strange that is` 译为"停一下，体会……"，不用"请仔细思考"。

### 例子是否本土化

**没有替换。** Bainbridge 的工厂案例、Casner 的 747-400 模拟机、Dahmani 的 GPS 驾车实验、
MIT 的脑电写作实验，在中文语境下同样成立、可查。

- 保留英文：**GPS**、**EEG**、**MIT**、**arXiv**、**Boeing 747-400**、**Human Factors**、**Automatica**
- 人名保留英文：Bainbridge、Casner、Dahmani、Bohbot、Kosmyna
- 机构名：MIT 保留英文缩写，首次出现给中文"麻省理工学院"语境

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括英文版五处自我披露：
1. **关于 AI 的那条证据是预印本且已被公开批评**，正文里就说明了，不藏在结尾；
2. 所有研究都来自与你不同的领域，套到知识工作上属外推，作者未找到知识工作领域的同行评审证据；
3. 迁移反向也有限度——Casner 的飞行员手部技能完好，本章不是"什么都在退化"；
4. GPS 纵向样本只有 13 人，作者自己的保留意见照引；
5. 沉没成本研究只作交叉引用，角色很小。

第 1 条尤其重要：**英文版在同一口气里引用 MIT 研究与对它的批评**，并明说本章"最强的证据不来自 AI 研究"。
中文如实照译，不做缓和。

## 待办

- [ ] 第 12 章是本章的**应对**（12 讲退化与平台期，以及如何训练正在退化的东西），
      须以本章的诊断为前提展开，不得重述
- [ ] 若日后能打开 Casner 2014 的出版方页面（Sage），可把 DOI 页链接一并加上作为第二入口
- [ ] 第 13 章不引入新框架（见 `chapters/en/README.md` 边界表）
