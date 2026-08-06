// ── 定义三个计数器 ──────────────────────────────
#let chap-cnt = counter("chap")
#let sec-cnt = counter("sec")
#let item-cnt = counter("item")


// ── 辅助函数（在各章节文件开头调用）────────────
#let begin-chapter(n) = {
  chap-cnt.update(n)
  sec-cnt.update(0)
  item-cnt.update(0)
}

#let begin-section(n) = {
  sec-cnt.update(n)
  item-cnt.update(0)
}

// ── 核心编号函数（在任意位置调用）───────────────
#let def-number() = {
  item-cnt.step() // 先让计数器 +1
  context {
    let h = counter(heading).get()
    let ch = h.at(0)
    let s = if h.len() > 1 { h.at(1) } else { 0 }
    let i = item-cnt.get().first()
    strong([#ch.#s.#i]) // 输出如 1.2.3
  }
}


#let ref-link(label, body) = link(label)[#highlight(fill: rgb("#FFF9C4"))[#text(font: "Microsoft YaHei", body)]]// FFECB3

// 是否输出译注的开关（默认不输出）
#let show-tns = if "show-tns" in sys.inputs {
  (sys.inputs.at("show-tns") == "true")
} else {
  true // 默认显示译注
}

// 译注：手动编号、用星号标号、条目前带“译注：”前缀
#let trans-note-cnt = counter("trans-note")
#let orig-note-cnt = counter("orig-note")
#let tnc(.., last) = "⭐" + trans-note-cnt.display()
#let onc(.., last) = orig-note-cnt.display()
#let trans-note(body) = {
  if show-tns {
    // 先步进，再显示——这是 Typst 计数器的使用惯例
    trans-note-cnt.step()

    // 在页脚插入对应条目
    footnote(numbering: tnc)[
      #context [译注：]#body
    ]
  }
}
#let orig-note(body) = {
  // 先步进，再显示——这是 Typst 计数器的使用惯例
  orig-note-cnt.step()
  // 在页脚插入对应条目
  if show-tns {
    footnote(numbering: onc)[
      #context [原文注：]#body
    ]
  } else {
    footnote(numbering: onc)[
      #context body
    ]
  }
}
#let orig-trans-note(body) = {
  if show-tns {
    [译者按：] + "\n" + body
  }
}
#let codebox(body) = block(
  fill: luma(245),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  font: "Courier New, monospace",
  body,
)
