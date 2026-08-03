#import "glossary.typ": *   // 导入所有定义
#import "common.typ": *   // 导入所有定义
#set text(font: ("Segoe UI Emoji", "SimSun", "Microsoft YaHei"))
#show emph: it => {
  text(font: "KaiTi", style: "italic", fill: blue, it.body)
}
#show strong: it => {
  text(font: "SIMHEI", weight: "bold", it.body)
}

#show heading.where(level: 1): it => {
  item-cnt.update(0)
  pagebreak(weak: true)
  v(2em)
  align(center)[
    #set text(font: "SIMHEI", size: 18pt, weight: "bold")
    #it.body
  ]
  v(1em)
}
#show heading.where(level: 2): it => {
  item-cnt.update(0)
  align(center)[
    #set text(font: "SIMHEI", size: 16pt, weight: "bold")
    #it.body
  ]
  v(1em)
}
#set page(
  numbering: "1", // 页码格式
  number-align: center, // 页码位置：left / center / right
)
#include "parts/cover.typ";
#pagebreak(weak: true)
#include "parts/half_title.typ";
#pagebreak(weak: true)
#include "parts/series.typ"
#pagebreak(weak: true)
#include "parts/title.typ";
#pagebreak(weak: true)
#include "parts/copyright.typ";
#pagebreak(weak: true)
#include "parts/dedication.typ";
#pagebreak(weak: true)
#include "parts/epigraph.typ";
#pagebreak(weak: true)
#include "parts/content.typ";
#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
// 前言
#include "parts/preface.typ"
#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
#pagebreak(weak: true)
#align(center)[
  #set text(font: "SIMHEI", size: 24pt, weight: "bold")
  第一部分：讲座
]
#include "parts/1_the_idea_of_a_scientific_philosophy.typ"
#include "parts/2_historical_perspectives_on_the_stratification_of_knowledge.typ"
