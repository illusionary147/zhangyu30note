#let section(content) = {
  counter("sec").step()
  set align(left)
  set text(size: 17pt)
  context heading(math.section + counter("sec").display("1") + [ ] + content, numbering: none)
}

#let subsec(content) = {
  set text(size: 14pt)

  context heading(h(1em) + content, numbering: none, level: 2)
}

#let my_init() = {
  import "@preview/physica:0.9.5": *
  set text(font: "SimSun")
  set par(first-line-indent: (amount: 2em, all: true))
  set page(margin: (x: 40pt))
  set enum(indent: 3em)

  show math.equation: it => {
    show regex("\p{script=Han}"): set text(font: "SimSun")
    it
  }
  show math.equation: set text(features: ("cv01",))
}
