# 中文章节

这里是**中文版**。英文版在 [`../en/`](../en/) 下，是**唯一的 source of truth**。

中文不是英文的附庸——对多数读者来说，这才是他们真正会读的那一版。但规则是单向的：**先改英文，再改中文**。永远不要为了中文通顺而让中文说出英文没说的话，也不要让两版各自漂移。

## 章节索引

| 章节 | 标题 | 状态 | 英文对应 |
|------|------|------|----------|
| 01 | AI 照妖镜：哪些"伪能力"正在被淘汰？ | planned | `../en/ch01-the-mirror.md` |
| 02 | AI 的盲区：机器永远学不会的四件事 | planned | `../en/ch02-ais-blind-spots.md` |
| 03 | 审美力：在"平均美"时代建立判断力 | planned | `../en/ch03-taste-beyond-average-beauty.md` |
| 04 | 故事与情感：AI 能写情书，但写不出心跳 | planned | `../en/ch04-story-and-emotion.md` |
| 05 | 跨领域思维：AI 只会内插，不会连接 | planned | `../en/ch05-cross-domain-thinking.md` |
| 06 | 没有正确答案时的判断力：数据沉默时如何下注 | planned | `../en/ch06-judgment-without-a-right-answer.md` |
| 07 | 深度思考力：打破信息茧房 | planned | `../en/ch07-deep-thinking-beyond-the-filter-bubble.md` |
| 08 | 提问力：从"搜索者"到"指挥官" | planned | `../en/ch08-prompting-as-thinking.md` |
| 09 | 第二大脑与第一大脑 | planned | `../en/ch09-second-brain-first-brain.md` |
| 10 | MVP 思维：让 AI 负责"想"，你负责"试" | planned | `../en/ch10-mvp-thinking.md` |
| 11 | 外包思考的代价：当 AI 替你思考，你失去了什么 | planned | `../en/ch11-the-cost-of-offloading.md` |
| 12 | 终身成长 2.0：把 AI 当私教 | planned | `../en/ch12-lifelong-learning-2-0.md` |
| 13 | 结语：做那个按下回车键的人 | planned | `../en/ch13-be-the-one-who-presses-enter.md` |

中文文件的**文件名与英文完全一致**（`ch01-the-mirror.md`、`ch02-ais-blind-spots.md`……），只是所在目录不同。这样两版的对应关系一眼可见，`scripts/check-chapter.sh` 也能照常校验。

**这份进度表不会被 `publish-chapter.sh` 自动带上**——它只 stages 章节文件、`CHANGELOG.md` 和中文的研究笔记。发布中文章节时，这张表要手动更新。

## 写译文的立场：像中文原创，不像译文

**不要逐字翻译。用中文写。**

一份保留了英文句子结构的译文，是没人愿意读的译文；读者买的是中文书，不是对英文的忠实。具体到操作：

- **拆句子。** 英文一个长句带两三个从句，中文经常该拆成三句。逗号连缀的长句是译文腔的第一大来源。
- **少用破折号。** 英文靠 `—` 插入补充说明，中文不该照搬。该断句就断句，该用冒号就用冒号。中文里连续出现两个破折号，基本可以判定是直译。
- **去掉被动式。** "它被认为是有价值的" → "大家觉得它有价值"。
- **把名词化拉回动词。** "进行优化的过程" → "优化"。
- **警惕这些词**：`作为一个`、`关于`（当介词用）、`进行`、`性`/`化`结尾的空洞名词、`在……的情况下`、`不仅……而且`（滥用）。这些多半是从英文结构直接落下来的。
- **术语查 [`../../glossary.md`](../../glossary.md)**，那里定了译法（`Prompt engineering` → `提示词工程`，不是"提示工程"）。新增术语先更新词表再用。
- **例子要本土化。** 英文版用 `Gumroad`、`Reddit`、`SWE-bench` 这类语境，中文版若是面向中文读者，换成对应场景；**但产品名、公司名、模型名、英文标识符（`SWE-bench`、`MMLU`）不要翻译**。

### 英文标题的中文处理

中文标题在 `../en/` 的英文标题之外另起，不是字面直译：

- 英文 `The Mirror: Which "Pseudo-Skills" Are Being Exposed?` → 中文 `AI 照妖镜：哪些"伪能力"正在被淘汰？`
- 英文标题的修辞（`Searcher` / `Commander`）在中文里找**功能对等**的意象（`搜索者` / `指挥官`），而不是逐词对应。

## 机械部分：一个字都不能动

上面说的是"怎么写"。下面这些是"不许改"，`check-chapter.sh` 抓不到，只能靠人守：

- **`<!-- verified -->` 标记连 URL 一起逐字照搬**，与英文一一对应。译文**不重新验证任何东西**——它把英文的验证结果搬运过来。漏掉一个标记，就等于让一条论断失去出处。
- **页脚的五行保持英文，逐字符一致**（`📅 Last updated:` 等），linter 是字面匹配的。
- **表格的英文标识符、产品名、被引用的英文搜索词**原样保留。
- **两个固定小节标题有固定中文形式**：
  - `The honest caveats` → `## 诚实的保留意见`
  - `Do this today` → `## 今天就开始`

## 已知的 linter 限制

`check-chapter.sh` **按空白分词**统计字数，而中文没有空格、也没有词间空白。所以它跑中文章节时**总会报两条警告**：

- `body is short`
- 与 `word_target` 的差值警告

这是工具的已知局限，**不代表译文内容单薄**。中文的字数该用别的方式核对（中文字符数大约对应英文词数的 1.6–1.8 倍），判断译文是否达标看的是 `../README.md`（英文版）里那一节的标准，以及上面这份清单。

发布中文章节用同一个脚本，分支按文件名推导，得到自己独立的 `draft/ch01-the-mirror` 分支和 PR：

```bash
./scripts/publish-chapter.sh chapters/zh/ch01-the-mirror.md
```

因为 `publish-chapter.sh` 是按路径 stage 文件的，翻译 PR 里会带上中文章节，外加 `CHANGELOG.md`、`chapters/zh/research/ch<NN>-notes.md`，以及碰巧被改动的那两个**英文**索引文件。翻译时你几乎不该动英文索引——**如果它们出现在 PR 里，说明你误改了**，退回去检查。

## 交接前清单

译文交出去之前，逐条过一遍：

- [ ] 通读一遍中文，**不看英文**。读着像中文吗？有没有哪句话你必须回看英文才能理解？
- [ ] 每个英文 `<!-- verified ... -->` 标记都在中文里找到了对应，URL 逐字相同，数量一致。
- [ ] `## 诚实的保留意见` 和 `## 今天就开始` 用的是固定中文标题。
- [ ] 页脚五行与英文逐字符一致。
- [ ] 术语与 [`../../glossary.md`](../../glossary.md) 一致；新增术语已回填词表。
- [ ] 专有名词、英文标识符没有被翻译。
- [ ] `./scripts/check-chapter.sh chapters/zh/<file>.md` 跑过，除了上面说的两条已知字数警告外没有 error。
- [ ] `../README.md` 和上面的进度表状态已同步。
