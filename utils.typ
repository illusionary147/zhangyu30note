#let sec(content)={
  counter("sec").step()
  set align(left)
  set text(size:17pt)
  context heading(math.section+counter("sec").display("1")+[ ]+content,numbering: none)
}

#let subsec(content)={
  set text(size:14pt)
  
  context heading(h(1em)+content,numbering: none,level: 2)
}
