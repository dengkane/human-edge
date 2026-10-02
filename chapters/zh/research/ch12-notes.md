---
chapter: 12
chapter_file: ch12-lifelong-learning-2-0.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 5
---

# 中文研究笔记 — 第 12 章：终身成长 2.0

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch12-notes.md`](../../en/research/ch12-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **17 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- **2026-10-02 风格重写：** 英文版按 `AGENTS.md` 的 *Story first* 标准重写（开篇改用"三小时后你有一份满意的成品，但下周没有模型还能不能再做一遍"的场景），中文随之重写，而非逐句搬运旧译文。论断、来源、反面证据一律未变；中文正文压到 6392 字符（区间内）。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。
- 英文版对本章的取证标准：Kestin 那篇**读了全文**（10 页 PDF），其余为出版方存缴摘要。
  中文如实照译。

## 两条被拦下的引注缺陷（必须记录）

**一：URL 格式写错（英文版）。** 英文初稿里 Steenbergen-Hu 那个标记写成 `https://10.3102/...`，
漏了 `doi.org/`。**由 `check-chapter.sh` 报错拦下**（标记 URL 与备注不符），发布前修正。

**二：同一条错误在中文版被复制了四处（zh）。** 翻译时输入法自动补全把 `https://10.1111/bjet.13544`
等四条写成了不带 `doi.org/` 的形式。发布前用正则批量扫描 `source: https://10\.` 时发现并修正，
**修正后重新跑 `diff` 确认中英标记序列逐字一致**。

留档的原因是：这类缺陷不影响解读、也不影响 linter 的部分检查项，只有"逐条核对 URL 是否可解析"
才能抓住。中文版尤其容易犯，因为标记是**手抄**过来的——本项目已因此出现过三次（ch10 的 DOI 打错、
ch12 英文的 URL 残缺、ch12 中文的四条复制错误）。

## 来源清单（与英文版一致）

| # | URL |
|---|-----|
| 1 | https://doi.org/10.3102/0013189X013006004 |
| 2 | https://doi.org/10.1080/00461520.2011.611369 |
| 3 | https://doi.org/10.1038/s41598-025-97652-6 |
| 4 | https://doi.org/10.1111/bjet.13544 |
| 5 | https://doi.org/10.1177/0956797614535810 |
| 6 | https://doi.org/10.3102/0034654315581420 |

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| two sigma / the 2 sigma problem | 双西格玛 / 双西格玛问题 | 保留"西格玛"音译，与中文教育统计学界通行说法一致 |
| effect size | 效应量 | 标准译法 |
| active learning | 主动学习 | 教育学通行译法 |
| intelligent tutoring system (ITS) | 智能辅导系统 | |
| deliberate practice | 刻意练习 | 标准译法（Ericsson 那套） |
| transfer | 迁移 | **本章核心术语**，指"学到的东西能否用在别处"；全章固定 |
| knowledge gain | 知识获得 | 与"迁移"成对 |
| metacognitive laziness | 元认知懒惰 | 该词出自 Fan 等那篇的标题，中文目前无稳定通译，直译并保留引号 |
| self-regulated learning | 自我调节学习 | 标准译法 |
| plateau | 平台期 | |
| scaffolding | 支架 | 教育学标准译法 |
| growth mindset | 成长型心态 | |
| cognitive load | 认知负荷 | |

### 三处关键对仗的译法

1. `The essay got better. The learning did not.` → "**文章变好了。学习没有。**"
   保留短句、并列、以及"变好/没有"的落差感。这是全章的枢纽句。
2. `AI chatbots are generally designed to be helpful, not to promote learning.`
   → "**AI 聊天机器人的设计目标是'有帮助'，不是'促进学习'。**"
   保留"是……不是……"的对照，这是本章最反直觉的一句（出自论文原文）。
3. `the model was the pipe` → "**它是那根管子。**"
   "pipe" 在此指"投放机制/管道"，译为"管子"保留隐喻的粗粝感，不转成"渠道"这种平滑词。

### 标题

英文 `Lifelong Learning 2.0: AI as Your Personal Trainer` → 中文 `终身成长 2.0：把 AI 当私教`

- 沿用 `chapters/zh/README.md` 索引里已定的名字。
- `trainer` 译"私教"而非"训练师"：后者过于体育/健身语域，且本章讲的是**一对一**的教学关系，
  "私教"在中文里同时承载"一对一"和"被指导"两层含义。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文的长复合句多数拆成中文短句。
- **保留 blockquote 原样。** 英文本章 blockquote 极多（VanLehn ×2、Kestin ×4、Fan ×2、Macnamara ×2），
  逐字翻译，加粗位置与英文一致。
- **去被动、去名词化。**
- **避免译文腔**：未使用"作为一个""进行""在……的情况下""不仅……而且""值得注意的是"。
- 英文 `Sit with that` / `Stop on that` 统一译"停一下，体会……""停在这上面"，保留其"叫停读者"的语气。
- 百分数：26%、21%、18%、4%、1%、0.79、0.76、4.5、3.5 用半角，与英文一致。

### 例子是否本土化

**没有替换。** 哈佛物理课的 AI 私教 RCT、"元认知懒惰"的写作实验、VanLehn 的辅导综述、
Macnamara 的刻意练习元分析，在中文语境下同样成立、可查。

- 保留英文：**ChatGPT**、**AI**、**RCT**
- 人名保留英文：Bloom、VanLehn、Kestin、Fan、Macnamara、Ericsson、Steenbergen-Hu
- 期刊名保留英文：Scientific Reports、Educational Psychologist、BJET、Psychological Science

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括英文版六处自我披露：
1. 最好的证据来自一门物理课，作者本人不主张推广到"复杂综合与更高阶批判性思维"；
2. 双西格玛的纠正有微妙之处——Bloom 讲的是"配以掌握学习"的辅导，VanLehn 综述的是更宽的文献；
3. 就辅导效应本身存在技术性异议：效果可能是"测验与教学对齐"而非可迁移的学习；
4. 刻意练习之争未定论，Ericsson 一方有正式回应，本章用的是实测发现；
5. 未打开 1993 年原始论文，故不为其加标记；
6. **不主张"AI 是好私教所以去用"**——设计才是那个发现，不是工具。

第 6 条尤其重要：中文如实照译，不做缓和。

## 待办

- [ ] 第 13 章是结语，**不引入新框架**（见 `chapters/en/README.md` 边界表：
      "If you find yourself building a model in 13, it belongs in 12"）
- [ ] 若日后能打开 Ericsson 等 1993 年原文（*Psychological Review*），可为其补一条独立标记
- [ ] 全稿完成后，需回填各章之间的交叉引用（ch01–ch12 有多处 TODO 性质的"后续章节"指引）
