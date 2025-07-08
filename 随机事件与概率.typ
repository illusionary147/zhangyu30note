#import "utils.typ": my_init, section, subsec
//#show:my_init()
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
#set enum(spacing: 1.5em)
#set list(spacing: 1.5em, indent: 2em)
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#outline()
#pagebreak()

#let 随机事件与概率 = {
  section[事件的关系与运算]
  [
    + 包含：$A subset B$
    + 相等：$A=B$
    + 积（交）：$A inter B$或$A B$
    + 相容：$A B eq.not emptyset$
    + 互斥：$A B eq emptyset$
    + 和（并）：$A union B$
    + 差：$A-B$
    + 逆（对立）：$macron(A)$
    $ A-B=A-A B=A macron(B) $
    $ B=macron(A)arrow.double.l.r A B=emptyset 且 A union B=Omega $
    完备事件组：若$limits(union)_(i=1)^(n) A_i = Omega,A_i A_j=emptyset$,称有限个（或可列个）事件$A_1,A_2,dots,A_n (dots)$为完备事件组

    运算
    - 吸收律：若$A subset B$,则$A union B=B,A inter B=A$
    - 分配律：$&A union (B inter C)=(A union B) inter (A union C),A inter (B union C)=(A inter B) union (A inter C),$\ ~~~~~~~~$A inter (B-C)=(A inter B)-(A inter C)$
    - 结合律：$A union (B union C)=(A union B) union C,A inter (B inter C)=(A inter B) inter C$
    - 交换律：$A union B=B union A,A inter B=B inter A$
    - 对偶律（德摩根律）：$dash(A union B)=macron(A) inter macron(B),dash(A inter B)=macron(A) union macron(B)$
  ]
  section[古典概型和几何概型]
  subsec[古典概型]
  [
    + 有限个样本点（基本事件）
    + 每个样本点发生的可能性相等
    如果古典概型的基本总事件总数记为$n$,事件$A$包含$k$个基本事件，也叫作有利于$A$的基本事件有$k$个，则$A$的概率为$ P(A)=k/n $
  ]
  section[概率性质与公式]
  subsec[性质]
  [
    有界性：对于任意事件$A$,有$0<=P(A)<=1$,且$P(emptyset)=0,P(Omega)=1$.

    单调性：设$A,B$是两个事件，若$A subset B$,则$P(A)<=P(B),P(B-A)<=P(B)-P(A)$.
  ]
  subsec[公式]
  [
    + 逆概率事件公式：对于任意事件$A$,有$P(macron(A))=1-P(A)$.
    + 加法公式：对任意两个事件$A,B$,有
    $ P(A union B)=P(A)+P(B)-P(A inter B) $
    $ P(A union B)=P(A macron(B) union A B union macron(A)B)=P(A macron(B))+P(A B)+P(macron(A)B) $
    + 减法公式：$P(A-B)=P(A)-P(A B)=P(A macron(B))$
    + 条件概率公式：设$A,B$为任意两事件，若$P(A)>0$,我们称在已知事件$A$发生的条件下事件$B$发生的概率为条件概率，记为$P(B bar A)$,且$ P(B bar A)=P(A B)/P(A) $
    + 乘法公式：如果 $P(A)>0$,则$P(A B)=P(A)P(B bar A)$

      一般地，对于$n>2$,如果$P(A_1 A_2 dots A_n)>0$,则有
      $ P(A_1 A_2 dots A_n)=P(A_1)P(A_2 bar A_1)P(A_3 bar A_1 A_2)dots P(A_n bar A_1 A_2 dots A_(n-1)) $
    + 全概率公式：若$limits(union)_(i=1)^(n) A_i = Omega$,$A_i A_j=emptyset(i eq.not j, i, j=1, 2, dots, n),P(A_i)>0$,则对任意事件$B$,有$ B=limits(union)_(i=1)^(n)A_i B,P(B)=sum_(i=1)^n P(A_i)P(B bar A_i) $
    + 贝叶斯公式（又叫逆概率公式）：如果$limits(union)_(i=1)^(n)A_i=Omega,A_i A_j=emptyset(i eq.not j ";"i, j=1, 2, dots, n),P(A_i)>0$,则对任意事件$B$,有：$ P(A_j bar B)=(P(A_j)P(B bar A_j))/(sum_(i=1)^n P(A_i)P(B bar A_i))(j=1,2,dots,n) $
  ]
  section[事件独立性和独立重复实验]
  subsec[事件独立性]
  [
    设$A,B$为两个事件，如果$P(A B)=P(A)P(B)$,则称事件$A,B$*相互独立*

    表示两事件相互独立的其他形式：
    - 若$P(A)>0,P(B bar A)=P(A B)/P(A)=P(B)$
    - $P(A)=0$且$A B subset A$，则$0<=P(A B)<=P(A)=0,$故$P(A B)=0$,即$P(A B)=P(A)P(B)$依然成立
  ]
  subsec[独立性判定]
  [
    + $A,B$相互独立$arrow.double.l.r A macron(B)$相互独立$arrow.double.l.r macron(A),B$相互独立$arrow.double.l.r macron(A),macron(B)$相互独立
    + 对独立事件组不含相同事件作运算，得到的新事件组仍独立
    + 若$P(A)=0$或$P(A)=1$,则$A$与任意事件$B$相互独立
  ]
  subsec[独立实验序列概型与$n$重伯努利概型]
  [

  ]
}

#随机事件与概率
