---
chapter: 7
chapter_file: ch07-deep-thinking-beyond-the-filter-bubble.md
researched: 2026-10-01
sources_kept: 9
sources_rejected: 5
---

# 中文研究笔记 — 第 07 章：深度思考力

中文版不重新做调研。完整的研究轨迹、来源分级、被拒来源与反面证据，都在英文版
[`../../en/research/ch07-notes.md`](../../en/research/ch07-notes.md)。这里只记录**翻译过程中的判断**，
以及中文版与英文版之间任何有意的差异。

## 与英文版的关系

- **17 个 `<!-- verified -->` 标记连 URL 一起逐字搬运，与英文一一对应、顺序一致。**已验证：
  `diff` 两份文件的 `source:` 序列为空。
- 页脚五行保持英文，逐字符一致（已用 `diff` 核对）。
- 译文**不重新验证任何论断**。
- 英文版里"耶鲁预算实验室那一页打不开、片段未被采用"那段，**本身不带 `verified` 标记**——
  因为标记的含义是"某论断对照某来源核查过"，而这里核查到的是"该来源打不开"。中文照此办理，
  不添加标记。

## 来源清单（与英文版一致）

| # | URL |
|---|-----|
| 1 | https://reutersinstitute.politics.ox.ac.uk/echo-chambers-filter-bubbles-and-polarisation-literature-review |
| 2 | https://www.pnas.org/doi/10.1073/pnas.2023301118 |
| 3 | https://pmc.ncbi.nlm.nih.gov/articles/PMC9966223/ |
| 4 | https://pages.ucsd.edu/~mckenzie/nickersonConfirmationBias.pdf |
| 5 | https://moodle2.units.it/pluginfile.php/433142/mod_resource/content/1/Drummond%20%20Fischhoff%20%282019%29.pdf |
| 6 | https://mediatechdemocracy.com/files/publications/echo-chambers-filter-bubbles_2023.pdf |
| 7 | https://reglab.stanford.edu/publications/hallucination-free-assessing-the-reliability-of-leading-ai-legal-research-tools/ |
| 8 | https://arxiv.org/abs/2211.03622 |
| 9 | https://arxiv.org/abs/2507.15821 |

（另有一项**有意不使用**的来源，即耶鲁预算实验室那一页，见上；它不计入独立来源数。）

## 翻译中的判断

### 术语

| 英文 | 中文 | 备注 |
|------|------|------|
| filter bubble | 信息茧房 / 过滤气泡 | **两处都用，分工不同**：标题用"信息茧房"（索引已定的译名，中文读者最熟悉）；正文首次引入概念时用"**过滤气泡**"并加粗，因为这一章正是在拆解这个比喻，需要点出它的原义。后文随语境交替使用 |
| echo chamber | 回音室 | 标准译法 |
| polarisation | 极化 | 标准译法 |
| homophilic clustering | 同质聚集 | 网络科学通行译法；首次出现给中文解释"人跟想法相近的人聚在一起" |
| exposure / engagement | 接触面 / 互动面 | 刻意不用"暴露"，后者在中文里有负面歧义 |
| actively open-minded thinking (AOT) | 主动开放思维 | 保留缩写 AOT |
| myside bias | 我方偏差 | 不用"确认偏误"——两者在本章是**不同层级**的概念，混用会毁掉论证。见下 |
| confirmation bias | 确认偏误 | 标准译法 |
| motivated cognition | 动机性认知 | 标准译法 |
| pre-committed falsifier | 预先写下的证伪条件 | 不用"预注册"，语境不同 |
| adversarial pass | 对抗性推演 | |
| disposition / structural | 倾向 / 结构 | 全章的关键对立，两个词全程固定 |

### 最要紧的一处术语决定：我方偏差 ≠ 确认偏误

英文版花了一段把 **myside bias** 和 **confirmation bias** 分开：前者是"按证据对哪一方有利来评价证据"，
后者是更广的家族。中文若把 `myside bias` 译成"确认偏误"，**整章的核心悖论就会塌掉**——
因为"开放思维不预测规避确认偏误"听起来只是弱，而"开放思维不预测规避我方偏差"才是那个真正的反转。

所以 `myside bias` 全章固定译"我方偏差"，`confirmation bias` 固定译"确认偏误"，两者不互换。

### 一个有意的双译：filter bubble

标题 `Deep Thinking: Breaking Out of the Filter Bubble` → `深度思考力：打破信息茧房`。

- 主标题沿用 `chapters/zh/README.md` 索引里已定的名字。
- 正文用"过滤气泡"。**这不是不一致，是分工**：标题要让中文读者一眼认出这个熟悉的说法，
  正文要还原 Pariser 的原词以便拆解它。若全篇统一成"信息茧房"，"它是个被滥用的隐喻"
  这个论证就失去了着力点。

### 表达的调整

按 `chapters/zh/README.md` 的标准，不逐字翻译：

- **拆句。** 英文的复合从句多数拆成中文短句。例："Your own bias is invisible from inside — that is
  why dispositions do not catch it." → "你自己的偏误从内部看不见——这正是倾向抓不住它的原因。"
- **保留引文原样。** 两段 blockquote（路透社综述结论、AOT 悖论）逐字翻译，加粗位置与英文一致。
- **去被动、去名词化。** "measures were taken"式表述一律改主动。
- **避免译文腔**：未使用"作为一个""进行""在……的情况下""不仅……而且""值得注意的是"。
- **口语化的内心独白保留口语**：`"Should I update?"` → "我该不该更新？"
- 英文 `the walls are built by your own attention` 用"墙是你自己的注意力垒起来的"，
  保持隐喻的具象感，不用"由……所构建"。

### 例子是否本土化

**没有替换。** 路透社综述、Cinelli 的 Facebook/Twitter 研究、Stanovich 的 AOT 量表、
耶鲁预算实验室、RegLab、Perry 等与 Schroeder 等的研究，在中文语境下同样成立、可查。

- 保留英文：**AOT**、**Facebook**、**Twitter**、**PNAS**、**App**
- 机构名首次出现给中文全称并附英文：路透社新闻研究所（Reuters Institute for the Study of Journalism）、
  耶鲁预算实验室（Yale Budget Lab）
- 人名保留英文：Cinelli、Stanovich、Toplak、Nickerson、Drummond、Fischhoff、Pariser

## 与英文版的差异

**无内容差异。** 不增不减任何论断，包括英文版四处自我披露：
1. 过滤气泡的发现比概括更有争议，引的是长报告里的一句短引文；
2. 同质聚集的结果真实、未被淡化；
3. **推荐的三种结构，其效力作者并未测量过**——是论证充分的推荐，不是被证明的推荐；
4. AOT 悖论是关于量表测量的倾向，不等于"努力无用"。

第 3 条尤其重要：**英文版主动承认自己的建议没有直接证据**，中文如实照译，不做缓和。

另外，英文版在评审中自行改掉的两处（把 Cinelli 的结论说成"不在信息供给里"属过度推断；
"本书自己的研究中，可及报道与片段相矛盾"这一未记录的自述），中文**只译定稿版本**，
不留任何中间稿的痕迹。

## 待办

- [ ] 第三部分已完成 07，08《提问力》待写；写完 08 后回填两章之间的交叉引用
- [ ] 若日后能打开路透社综述的 PDF 正文，可把第 1 条的引文升级为更完整的引用
- [ ] 第 12 章不得重讲本章（见 `chapters/en/README.md` 边界表），须假定本章已读
