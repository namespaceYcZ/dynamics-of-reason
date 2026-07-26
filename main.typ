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
  it
}
#set page(
  numbering: "1", // 页码格式
  number-align: center, // 页码位置：left / center / right
)

= #dynamics_of_reason()

== #michael_friedman()

// 内页
=
斯坦福#kant()讲座

斯坦福#kant()讲座是由斯坦福大学哲学系主办的邀请讲座系列。
哲学家们受邀反思他们领域的最新发展，并以一种对更广泛的学者、教育工作者、学生和公众易于理解的方式报告当前的研究。
讲座主题涵盖从#kant()的科学哲学到人类欲望的本质。
#kant()讲座的主讲人由系里选出，基于其对其领域问题的深刻理解，以及对这些问题与跨学科持久关注的问题之间联系的洞察力。

// 内页
#michael_friedman()
#dynamics_of_reason()
1999年斯坦福大学#kant()讲座

CSLI 出版社
语言与信息研究中心
斯坦福大学，加利福尼亚州

// 图书信息
Library of Congress Cataloging-in-Publication Data
Friedman, Michael, 1947-
Dynamics of reason / Michael Friedman.
p. cm.
(Stanford Kant Lectures)
Includes bibliographical references and index.
ISBN 1-57586-291-3 (alk. paper)-ISBN 1-57586-292-1 (pbk.: alk. paper)
1. Science-Philosophy. I. Title
Q175 .F892 2001
501-dc21
2001017171

这是标准的美国图书馆版权页与编目信息。

Library of Congress Cataloging-in-Publication Data（美国国会图书馆在版编目数据）
简称 CIP 数据。这是美国国会图书馆（Library of Congress，相当于美国的国家图书馆）在图书正式出版之前，就根据出版社提供的书稿信息预先编制的目录著录数据。它印在版权页上，方便全世界的图书馆在采购此书后，可以直接按照统一标准入库编目，而无需各自重新著录。中国的对应制度是"CIP 数据核字"，由国家新闻出版署管理。

Friedman, Michael, 1947-
作者的规范著录形式。

姓在前、名在后（Friedman, Michael）是图书馆编目惯例，便于按姓氏字母排序检索。
1947- 是作者的生年。破折号后留空，表示著录时作者仍在世（#friedman()本人生于 1947 年，目前仍健在）。若作者已故，会写成如 "1947–2020" 的形式。

Dynamics of reason / Michael Friedman.
书名及责任者。

斜杠 "/" 在编目规则（AACR2/RDA 标准）中是责任说明的分隔符，表示"此书由……负责"。
这里说明本书题为 Dynamics of Reason，责任者为 Michael Friedman。

p. cm.
即 "pages ; centimeters"（页；厘米）的缩写占位符。

这是 CIP 数据在图书正式印制前的标准占位符，因为此时具体页数和开本尺寸尚未最终确定。
正式出版后，某些编目版本会替换为实际数据（如 "xiv, 141 p. ; 23 cm."）。您看到的仍是"p. cm."，说明保留了 CIP 的原始预编目形式。

(Stanford Kant Lectures)
丛书说明。表明本书属于*"斯坦福#kant()讲座"这一系列丛书*中的一种（即我们上一段讨论过的那个讲座系列的结集出版物）。

Includes bibliographical references and index.
"含参考文献和索引"。这是编目中的标准附注，告知读者本书末尾附有：

bibliographical references：参考文献目录（引用的书目）
index：主题/人名索引（便于按关键词反查）
这一附注对学术图书是重要的质量标记，暗示该书为学术性著作而非普及读物。

ISBN 1-57586-291-3 (alk. paper) — ISBN 1-57586-292-1 (pbk.: alk. paper)
两个国际标准书号（ISBN, International Standard Book Number），对应本书的两种版本：

1-57586-291-3：精装本（hardcover），采用*无酸纸（alkaline paper / acid-free paper）*印刷。
1-57586-292-1 (pbk.)：平装本（paperback），同样采用无酸纸。
关于"无酸纸（alk. paper）"：这是一个专业细节。普通纸张含酸性物质，年久会发黄变脆；无酸纸的 pH 值呈中性或弱碱性，可保存数百年不易劣化。学术出版物（尤其是希望长期保存于图书馆的哲学、历史类著作）通常特别标注使用无酸纸印刷，这是学术书籍的品质象征。

关于 ISBN 的前缀 "1-57586-"：这是出版社标识码，对应本书的实际出版方——CSLI Publications（Center for the Study of Language and Information Publications，斯坦福大学"语言与信息研究中心"下属的出版机构）。CSLI 是斯坦福#kant()讲座系列的常规出版方。

1. Science–Philosophy. I. Title
这是主题词与检索点的著录：

"1. Science–Philosophy"：本书的主题分类为"科学—哲学"，即科学哲学（Philosophy of Science）。破折号 "–" 是主题词表（LCSH, Library of Congress Subject Headings）中的副标目分隔符，表示"科学"这一大类下的"哲学"这一细分方向。
"I. Title"：罗马数字 I 表示这是编目中的第一个附加检索点——按书名检索。即读者不仅可以按作者查到此书，也可以直接按书名 Dynamics of Reason 检索到。

Q175 .F892 2001
美国国会图书馆分类号（Library of Congress Classification, LCC）。这是图书在图书馆书架上的物理排架号，也是一种知识分类系统。逐字段解读：

Q = 大类"科学（Science, General）"
Q175 = 细分类"科学的哲学与方法论（Philosophy and methodology of science）"——这个类号是科学哲学著作的标准归属。
.F892 = 著者号（Cutter number），由作者姓氏#friedman()派生而来（字母 F + 数字编码 892，用于在同一主题下区分不同作者）。
2001 = 出版年份。

📌 说明：您现在知道，如果去任何采用 LCC 系统的图书馆（多数英美大学图书馆），本书会被放在 Q175 .F892 2001 这个书架位置上，与其他科学哲学经典（如 Popper、Kuhn、Lakatos 的著作）为邻。

501-dc21
杜威十进分类号（Dewey Decimal Classification, DDC），第 21 版。

501 = 杜威系统中的"科学的哲学与理论（Philosophy and theory of science）"类号。
5 = 自然科学与数学
50 = 自然科学总论
501 = 自然科学的哲学理论
dc21 = 使用的是杜威十进分类法的第 21 版（Dewey Classification, 21st edition）。DDC 系统会定期修订，标注版本号可确保跨版本兼容。
📌 LCC 与 DDC 是两套并行的分类系统。美国大学图书馆常用 LCC，公共图书馆和中小学图书馆常用 DDC，中国图书馆则主要用《中图法》（本书按中图法应归入 N02 科学的哲学）。

2001017171
美国国会图书馆控制号（LCCN, Library of Congress Control Number）。

前四位 2001 = 该书被 LC 登记编目的年份（2001 年）。
后续 017171 = 该年内的顺序编号。
这个号码是本书在国会图书馆系统中的唯一身份识别码，全世界任何图书馆员通过 LCCN 都能精准调取本书的完整编目记录。

// 纪念
谨以此书纪念 #carl_gustav_hempel_complex()#trans-note[#carl_gustav_hempel()（Carl Gustav Hempel, 1905–1997），是 20 世纪最重要的科学哲学家之一，*#logical_empiricism()（logical empiricism）*运动的核心代表人物。"Peter"是他广为人知的昵称（源于他年轻时的一段趣事，朋友和学生都这样称呼他）。] ——恩师、导师、挚友#trans-note[#friedman()在普林斯顿大学求学期间，#hempel()是他的老师和博士论文指导者。本书出版于 2001 年，而#hempel()于 1997 年去世，因此这本凝结了#friedman()毕生思考的著作，献给刚刚离世的恩师，既是学术传承的致敬，也是私人情谊的悼念。三个递进的称谓（老师→导师→朋友）勾勒出他们关系从课堂、到学术引路、再到私人友谊的深化过程。]

// 引言
人们或许会以为，*〔理性对于系统统一性和简单性的要求〕*不过是一种经济性的权宜手段，理性借此试图尽可能省却自身的一切劳苦；它只是一种假设性的尝试：如果这种尝试获得成功，那么它便会凭借由此达到的统一性，使那个预设的解释原则获得某种盖然性。

然而，这种自利性的目的很容易同那一理念#trans-note[原文把 Idea 首字母大写，是因为它是#kant()的技术术语，即“理性理念”（Vernunftidee），不能简单译作日常意义上的“想法”或“观念”。#kant()意义上的“理念”指一种：经验永远无法完整提供；却为经验知识指明系统性目标；引导理性不断超越当前知识状态的表象或原则。“自然知识的完备系统统一性”就是这样一种理念：任何历史时期的科学都没有实现它，但科学研究又必须以它为方向。]区别开来。因为，依照这一理念，每个人都预设：理性的这种统一性与自然本身相符合；而且理性在这里——尽管它确实无法规定这种统一性的界限——并非请求，而是命令。#trans-note[这段话出自#kant()《纯粹理性批判》“先验辩证论附录”中讨论“纯粹理性理念的调节性运用”的部分，标准页码为 A653/B681。#friedman()采用的是 Norman Kemp Smith 的英译。]

—— #kant()
// 目录
= 目录

前言 xi

第一部分：讲座

I. 科学哲学的观念 3

II. 知识分层的历史视角 25

III. 理性、革命与探究共同体 47

第二部分：讨论成果

1. 相对化先验 71
2. 先验原则与经验证据 83
3. 理性与革命 93
4. 哲学的作用 105
5. 其他问题与其他科学 117

参考文献 131

索引 137

// 前言
#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
#include "preface.typ"
#trans-note-cnt.update(0)
#orig-note-cnt.update(0)
= 第一部分：讲座
#include "the_idea_of_a_scientific_philosophy.typ"
