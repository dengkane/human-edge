# 研究笔记（中文版）

每章一份 `ch<NN>-notes.md`，与它对应的中文章节**一起提交**。

完整规则在英文版 [`../en/research/README.md`](../../en/research/README.md)，模板在
[`../../../templates/research-notes-template.md`](../../../templates/research-notes-template.md)。
这里只说中文版特有的部分。

## 与英文研究笔记的关系

**研究是英文版做的，中文版不重新验证。**

- 中文章节里的 `<!-- verified -->` 标记连 URL 一起，从英文章节**逐字搬运**过来。
- 中文研究笔记的作用是记录**翻译过程中的判断**，不是重新做一遍调研：
  - 哪些例子被本土化替换了，替换成了什么、为什么；
  - 英文版引用的来源在中文语境下是否有更贴切的对等来源（**不是**必须换，换了的要记下来）；
  - 翻译中发现的歧义、无法对应的概念、或怀疑英文版原论断有问题的地方。

最后一条尤其重要：**如果翻译时你发现某条论断站不住，不要自己改中文**。按
[`../README.md`](../README.md) 的单向规则，先回去改英文，再同步中文。

## 交叉检查

`scripts/check-chapter.sh` 对中文研究笔记的检查与英文一致：

- 中文章节引用的每个 URL 必须出现在中文研究笔记里；
- 笔记的 `sources_kept` 不得低于章节实际引用的来源数。

由于中文标记与英文一一对应，中文章节的来源数通常与英文相同。如果中文版**额外**引入了英文版没有的来源（例如换了本土化案例），必须补进中文研究笔记，否则 linter 会报错。

## Front matter

```yaml
---
chapter: 1
chapter_file: ch01-the-mirror.md
researched: YYYY-MM-DD
sources_kept: 6
sources_rejected: 3
---
```

`chapter_file` 写**中文章节的文件名**，与英文一致（`ch01-the-mirror.md`）。

## 起步

```bash
cp templates/research-notes-template.md chapters/zh/research/ch01-notes.md
```

通常的做法是先把英文研究笔记读完，再在中文笔记里记本土化决定；英文笔记已经涵盖搜索轨迹和
来源分级，中文这份不必复制一遍。
