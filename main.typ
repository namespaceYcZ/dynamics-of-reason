#import "glossary.typ": *   // 导入所有定义
#import "common.typ": *   // 导入所有定义

#set text(font: ("Libertinus Serif", "SimSun", "Microsoft YaHei"), lang: "zh")// todo SimSun和Noto Serif SC选哪个？
#show emph: it => {
  text(font: ("Libertinus Serif", "KaiTi"), style: "italic", it.body)
}
#show strong: it => {
  text(font: ("Libertinus Serif", "SIMHEI"), weight: "bold", it.body)
}

#show heading.where(level: 1): it => {
  item-cnt.update(0)
  pagebreak(weak: true)
  v(2em)
  align(center)[
    #set text(font: ("Libertinus Serif", "SIMHEI"), size: 18pt, weight: "bold")
    #it.body
  ]
  v(1em)
}
#show heading.where(level: 2): it => {
  item-cnt.update(0)
  align(center)[
    #set text(font: ("Libertinus Serif", "SIMHEI"), size: 16pt, weight: "bold")
    #it.body
  ]
  v(1em)
}

#set page(numbering: "i", number-align: center)
#counter(page).update(1)

#include "parts/cover.typ"
#pagebreak(weak: true)
#include "parts/half_title.typ"
#pagebreak(weak: true)
#include "parts/series.typ"
#pagebreak(weak: true)
#include "parts/title.typ"
#pagebreak(weak: true)
#include "parts/copyright.typ"
#pagebreak(weak: true)
#include "parts/dedication.typ"
#pagebreak(weak: true)
#include "parts/epigraph.typ"
#pagebreak(weak: true)
#include "parts/content.typ"

#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
// 前言
#include "parts/preface.typ"

#set page(
  numbering: "1", // 页码格式
  number-align: center, // 页码位置：left / center / right
)
#counter(page).update(2)

#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
#pagebreak(weak: true)

#align(center)[
  #set page(header: none, footer: none)
  #set text(font: "SIMHEI", size: 24pt, weight: "bold")
  第一部分：讲座
]
#include "parts/lecture_1.typ"
#include "parts/lecture_2.typ"
#include "parts/lecture_3.typ"

#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
#align(center)[
  #set page(header: none, footer: none)
  #set text(font: "SIMHEI", size: 24pt, weight: "bold")
  第二部分：成果
]
#include "parts/fruit_1.typ"
#include "parts/fruit_2.typ"
#include "parts/fruit_3.typ"
#include "parts/fruit_4.typ"

#if show-tns {
  include "parts/appendix_a.typ"
  include "parts/appendix_b.typ"
  include "parts/appendix_c.typ"
  include "parts/appendix_d.typ"
  include "parts/appendix_e.typ"
  include "parts/appendix_f.typ"
  include "parts/appendix_i.typ"
  include "parts/appendix_j.typ"
  include "parts/appendix_k.typ"
  include "parts/appendix_l.typ"
  include "parts/appendix_m.typ"
}
