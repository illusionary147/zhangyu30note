#import "utils.typ": section, subsec, my_init
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
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#outline()
#pagebreak()

#let 向量组 = {
  section[向量基础]
  subsec[内积与正交]
  [
    两个大小相同的列向量$bold(alpha),bold(beta)$的内积：$(bold(alpha),bold(beta))=bold(alpha)^TT bold(beta)$

    当$bold(alpha)^TT bold(beta)=0$时，称两个向量正交
    设$bold(A)=mat(bold(alpha), bold(beta)),$若$bold(alpha)perp bold(beta),$则$bold(A)^TT bold(A)=mat(abs(abs(bold(alpha)))^2, 0; 0, abs(abs(beta))^2)$,又若$abs(abs(bold(alpha)))=abs(abs(bold(beta)))$,则$bold(A)^TT bold(A)=bold(E)$,

    向量$bold(alpha)$的模$abs(abs(bold(alpha)))=sqrt(limits(Sigma)_(i=1)^n a_i^2)$

    *标准正交向量*#h(1em)若列向量组$bold(alpha)_1,bold(alpha)_2,dots,alpha_s$满足$ alpha_i^TT alpha_j=cases(0"   if   "i eq.not j, 1"   if   "i =j) $则称$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$为标准或单位向量正交组，也叫做规范正交基
  ]
  subsec[正交矩阵]
  [
    设$bold(A)$是$n$阶方阵，满足$bold(A)^TT bold(A)=bold(E),$则称$bold(A)$为正交矩阵

    $bold(A)$是正交矩阵$arrow.l.r.double bold(A)^TT bold(A)=bold(E)arrow.l.r.double bold(A)^TT = bold(A)^(-1)arrow.double.l.r bold(A)$的行（列）向量组是规范正交基

    $2 times 2$正交矩阵可以写为$mat(cos theta, -sin theta; sin theta, cos theta)$
  ]
  subsec[向量组线性表示与线性组合]
  [
    *线性相关*#h(1em)对于$m$个$n$维向量$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$,若存在一组不全为零的数$k_1,k_2,dots,k_m,$使得$ k_1 bold(alpha)_1+k_2 bold(alpha)_2+dots+k_m bold(alpha)_m=0, $则称向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$线性相关

    *线性无关*#h(1em)对于$m$个$n$维向量$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$,若不存在一组不全为零的数$k_1,k_2,dots,k_m,$使得$ k_1 bold(alpha)_1+k_2 bold(alpha)_2+dots+k_m bold(alpha)_m=0, $则称向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$线性无关
  ]
  subsec[线性相关性判别]
  [
    + 向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_n (n>=2)$线性相关的充要条件是向量组中至少有一个向量可以由其余向量线性表示。其逆否命题为：向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_n (n>=2)$线性无关的充要条件是向量组中任意一个向量都不能由其余向量线性表示。
    + 若向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_n$线性无关，而$bold(beta),bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_n$线性相关，则$bold(beta)$可由$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_n$线性表示，且表示法唯一
    + 如果向量组$bold(beta)_1,bold(beta)_2,dots,bold(beta)_t$可以由向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$线性表示，且$t>s$则$bold(beta)_1,bold(beta)_2,dots,bold(beta)_t$线性相关，无论向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$是否线性相关。其等价命题为：若$bold(beta)_1,bold(beta)_2,dots,bold(beta)_t$可以由$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$线性表示，且$bold(beta)_1,bold(beta)_2,dots,bold(beta)_t$线性无关，则$t<s$
    + 设$m$个$n$维向量$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$，该向量组线性相关$arrow.double.l.r$齐次线性方程组$ [bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m]vec(delim: "[", x_1, x_2, dots.v, x_m)=x_1bold(alpha)_1+x_2bold(alpha)_2+dots+x_m bold(alpha)_m=0 $有非零解$arrow.double.l.r r([bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m])<m$。若$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$线性无关，则方程组只有零解，且$r[bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m]=m$
    + 向量$bold(beta)$可由向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$线性表示$arrow.double.l.r$非齐次线性方程组$ [bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s]vec(delim: "[", x_1, x_2, dots.v, x_s)=x_1bold(alpha)_1+x_2 bold(alpha)_2+dots+x_s bold(alpha)_s=bold(beta)"有解" $$arrow.double.l.r r([bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m])=r([bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m,bold(beta)])$
    + 若向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_m$中有一部分线性相关，则整个向量组也线性相关
    + 若一组$n$维向量$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$线性无关，则把这些向量各任意添加$m$个分量所得到的新向量$(n+ m 维)$组$bold(alpha_1)^*,bold(alpha)_2^*,dots,bold(alpha)_s^*$也是线性无关的。若向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$线性相关，则他们各去掉相同的若干个分量所得到的新向量组也是线性相关的
  ]
  section[极大线性无关组、等价向量组、向量组的秩]
  subsec[极大线性无关组]
  [
    在向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$中，若存在部分组$bold(alpha)_i_1,bold(alpha)_i_2,dots,bold(alpha)_i_r$满足：
    + $bold(alpha)_i_1,bold(alpha)_i_2,dots,bold(alpha)_i_r$线性无关
    + 向量组中任意一向量$bold(alpha)_i (i=1,2,dots,s)$均可由$bold(alpha)_i_1,bold(alpha)_i_2,dots,bold(alpha)_i_r$线性表示
    则称$bold(alpha)_i_1,bold(alpha)_i_2,dots,bold(alpha)_i_r$为向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$的*极大线性无关组*
  ]
  subsec[等价向量组]
  [
    设两个向量组(Ⅰ)$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$,(Ⅱ)$bold(beta_1),bold(beta)_2,dots,bold(beta)_t$,若（Ⅰ）中每个向量都可以由（Ⅱ）中向量线性表示，且（Ⅱ）中每个向量也可以由（Ⅰ）中向量线性表示，则称这两个向量组等价，记为（Ⅰ）$tilde.equiv$（Ⅱ）

    若(Ⅰ)的每一个向量都可以由（Ⅱ）线性表示，则$r(Ⅰ)<=r(Ⅱ)$

    等价向量组具有反身性，对称性，传递性
  ]
  subsec[向量组的秩]
  [
    向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$的秩$r(bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s)$是其极大线性无关组的个数

    等价向量组具有相等的秩，反之未必成立

    // 向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$的秩$r(bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s)=r(bold(beta_1),bold(beta)_2,dots,bold(beta)_t)$当且仅当向量组$bold(alpha_1),bold(alpha)_2,dots,bold(alpha)_s$与向量组$bold(beta_1),bold(beta)_2,dots,bold(beta)_t$等价
  ]
  subsec[有关秩的重要定理和公式]
  [
    + 三秩相等

      $r(bold(A))=bold(A)$的行秩$=bold(A)$的列秩
    + 若$A arrow.long^("初等行变换")bold(B)$，则：
      - $bold(A)$的行向量组和$bold(B)$的行向量组等价
      - $bold(A),bold(B)$的任何相应的部分列向量组具有相同的线性相关性
  ]
  section[等价矩阵和等价向量组]
  [
    + 矩阵$bold(A),bold(B)$同型时，$bold(A)tilde.equiv bold(B)arrow.double.l.r r(bold(A))=r(bold(B))arrow.double.l.r bold(P A Q)=bold(B)$
    + $bold(alpha)_i,bold(beta)_j (i=1,2,dots,s;j=1,2,dots,t)$同维，则：

      $&{bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_s}tilde.equiv{bold(beta)_i,bold(beta)_2,dots,bold(beta)_t} \
      arrow.double.l.r & {bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_s}tilde.equiv{bold(beta)_i,bold(beta)_2,dots,bold(beta)_t}"可以相互表示"\ arrow.double.l.r & r(bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_s)=r(bold(beta)_i,bold(beta)_2,dots,bold(beta)_t),"且可单方面表示，即只需证明一个向量组"\ &"可以由另一个向量组线性表示"\ arrow.double.l.r & r(bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_s)=r(bold(beta)_i,bold(beta)_2,dots,bold(beta)_t)=r(bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_s,bold(beta)_i,bold(beta)_2,dots,bold(beta)_t)$
  ]
  section[向量空间]
  subsec[基本概念]
  [
    若$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$是$n$维向量空间$RR^n$中的线性无关的有序向量组，则任一向量$bold(alpha)in RR^n$均可由$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$线性表示，记为$ bold(alpha)=a_1 bold(xi)_1+a_2 bold(xi)_2 +dots+a_n bold(xi)_n $称$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$是$RR^n$的一个基，基向量的个数$n$称为向量空间的维数，而$[a_1,a_2,dots,a_n]$称为向量$alpha$在基下的坐标，或称为坐标行向量
  ]
  subsec[基变换、坐标变换]
  [
    若$bold(eta)_1,bold(eta)_2,dots,bold(eta)_n$和$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$是$RR^n$中的两个基，且有关系$ [bold(eta)_1,bold(eta)_2,dots,bold(eta)_n]=[bold(xi)_1,bold(xi)_2,dots,bold(xi)_n]bold(C) $则称上式为$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$到$bold(eta)_1,bold(eta)_2,dots,bold(eta)_n$的基变换公式，$bold(C)$称为过渡矩阵，且可逆

    设$bold(alpha)$在$bold(xi)_1,bold(xi)_2,dots,bold(xi)_n$和基$bold(eta)_1,bold(eta)_2,dots,bold(eta)_n$下的坐标分别为列向量$bold(x),bold(y)$,则$bold(x)=bold(C y)$
  ]
}

#向量组
