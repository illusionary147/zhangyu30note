#import "utils.typ": section, subsec, my_init
//#my_init()
#import "@preview/physica:0.9.5": *
#set text(font: "SimSun")
#set par(first-line-indent: (amount: 2em, all: true))
#set page(margin: (x: 40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}
#show math.equation: set text(features: ("cv01",))


#outline()
#pagebreak()

#let 微分方程 = {
  section[概念]
  subsec[微分方程及其阶]
  [表示含有未知函数及其导数（或微分）与自变量之间关系的方程称为微分方程。]
}
#微分方程


