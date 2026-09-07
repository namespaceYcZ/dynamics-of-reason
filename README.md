# 迈克尔·弗里德曼《Dynamics of Reason》翻译计划
使用AI进行的书籍翻译，包含译注，方便无哲学背景的读者理解

## 进度
全书已译完：三篇讲座、五篇讨论成果、参考文献、索引及附录A–M（附录G未收入成书，见 `main.typ`）。

编译：`typst compile main.typ`；追加 `--input show-tns=false` 可隐藏全部译注。

## 体例
排版标点与译名的统一规则见 [`STYLE.md`](STYLE.md)。
新增或修改内容后，可运行 `python3 tools/check_style.py` 自动检查常见的体例问题
（全角/半角括号、引号、破折号与连接号、强调标记等）。

反复出现的人名与固定术语一律在 `glossary.typ` 中定义，正文以函数调用的形式使用
（如 `#kant()`、`#relativized_a_priori()`），以保证译名与格式全书一致。

## 目录结构
