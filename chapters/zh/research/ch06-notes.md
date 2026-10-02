---
chapter: 6
chapter_file: ch06-judgment-without-a-right-answer.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 0
---

# 中文研究笔记 — 第 06 章：没有正确答案时的判断力

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch06-notes.md`](../../en/research/ch06-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **8 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- **2026-10-02 风格重写：** 英文版按 `AGENTS.md` 的 *Story first* 标准重写（开篇改用"截止日期到了、数据没定，你把决定交给模型、换回一种感觉"的场景），中文随之重写，而非逐句搬运旧译文。论断、来源、反面证据一律未变；中文正文压到 6388 字符（区间内）。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。

## 来源清单（与英文版一致）

中文版引用与英文版完全相同的 5 个独立来源。分级与每项支持的论断见英文笔记。此处按 linter 要求列出全部 URL。

| # | URL |
|---|-----|
| 1 | https://www.colorado.edu/business/sites/default/files/attached-files/obhdp_2011_de_langhe_van_osselaer_wierenga.pdf |
| 2 | https://www.gary-klein.com/rpd |
| 3 | https://pmc.ncbi.nlm.nih.gov/articles/PMC11589672/ |
| 4 | https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0075796 |
| 5 | https://europepmc.org/article/pmc/pmc9094407 |

（另引用 `https://neurips.cc/virtual/2025/poster/121421` 作为与第 02 章的交叉引用。）

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| fuzzy decision-making | 模糊决策 | 词表已定。本章标题用"没有正确答案时的判断力"，正文里"模糊决策"未直接出现，但术语保持一致 |
| process accountability | 过程问责 | 不用"程序问责"——process 在此指"推理过程" |
| outcome accountability | 结果问责 | 与"过程问责"成对 |
| heuristic processing | 启发式加工 | 认知心理学标准译法 |
| satisficing | 满足化 / 满足 | 西蒙的标准译法（亦作"满意化"）。正文用"满足化"作名词、"满足"作动词 |
| Recognition-Primed Decision (RPD) | 识别启动决策 | 中文决策学界的通行译法，首次出现保留英文缩写 |
| blunder | 错着 | 象棋语境专用词，不是"大错" |
| disengage | 脱钩 / 把注意力移开 | 眼动研究语境；"脱钩"用于强调"从某个方案上脱离" |
| sunk / what you have spent | 已经花掉的 | 正文刻意不用"沉没成本"这个术语，因为英文版也没有用——它说的是"你已花掉的、无论如何都没了"。中文同样避开术语，保持说理的口吻 |

### 四个盲区命名

本章收束第 02 章的"**不担后果**"，沿用已定译名。第 02 章确立的四个盲区中文命名
（没有偏好 / 没有亲历 / 没有城外 / 不担后果）在第二部分收官时保持一致。

### 标题

英文 `Judgment Without a Right Answer: Deciding When the Data Is Silent` →
中文 `没有正确答案时的判断力：数据沉默时如何下注`

- 主标题沿用 `chapters/zh/README.md` 索引里已定的名字。
- 副标题 `Deciding When the Data Is Silent` 没有直译成"当数据沉默时如何决定"，而是用**如何下注**——
  与第 05 章引入的 stake（赌注）呼应，也点出本章的落点是"行动"而非"判断"。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文长复合句多数拆成中文短句。例："Judged on outcomes, you will quietly stop thinking.
  Judged on process, you will actually think." → "按结果评判，你会悄悄地停止思考。按过程评判，你才会真的思考。"
- **少用破折号。** 英文原文破折号极多，中文大量改为冒号、句号或独立分句。
- **去被动式**："you will be tempted to let the model make the call" → "你会被诱惑着让模型来做这个决定"。
- **避免名词化**："the question of whether the reversible version is a real test" →
  "这个可逆版本是一次真正的测试，还是一种回避决定的方式"。
- **避开译文腔词**：未使用"作为一个""进行""在……的情况下""不仅……而且"。
- 特别注意：`"Since there's no right answer, judge me on the outcome."` 译为
  "**"反正没有正确答案，那就按结果来评判我吧。"**"——保留口语感，因为它是被引用的内心独白，不是定义。
- `blunder` 在全章固定译"错着"，与 `suboptimal but attractive` 的"次优但仍有吸引力"形成对照，
  这个对照是全章关键，术语不能漂移。

### 例子是否本土化

**没有替换。** 本章案例（三项判断实验、消防指挥员 RPD 研究、机器人满足化的宝藏搜寻实验、
国际象棋眼动研究）在中文语境下同样成立、可查。

- 保留英文：**RPD**、**OBHDP**、**PLOS ONE**、**Frontiers in Robotics and AI**
- 机构名首次出现给中文全称：科罗拉多大学（论文所在机构，英文正文未点名，中文亦不添）
- 人名保留英文：de Langhe、Klein、Simon、Sheridan & Reingold 在来源行里保持英文拼写

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括四处自我披露：
1. 过程/结果问责两项研究互相矛盾，且分歧恰在本章情形（复杂任务）；
2. 本章是外推，"真正不可逆且无站得住脚答案"的决定无直接研究；
3. 过程问责结论本身并非统一，原论文承认结果问责在某些情境可取；
4. 满足化不是万能升级，模型正确时算法更优。

第 1 条尤其重要：**英文版主动承认证据分歧可能使本章建议在它瞄准的场景上被反转**，中文如实照译，
不做缓和。

## 待办

- [ ] 第二部分（03–06）已全部完成，后续写作第 07 章时回填交叉引用
- [ ] 若日后能打开 Dorison 等（PMC9354500）或 Brockner 1992 的承诺升级原始文献，
      可强化"已经做过的决定"那一节
