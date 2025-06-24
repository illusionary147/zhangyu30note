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
#let 线性方程组 = {
  section[齐次线性方程组]
  [
    $ bold(A)_(m times n) bold(x)=0 $
  ]
  subsec[有解条件]
  [
    + 当$r(bold(A))=n$时，方程组只有零解
    + 当$r(bold(A))<n$时，方程组有无穷多解，且有$n-r$个线性无关解
  ]
  subsec[解的性质]
  [
    + 若$bold(A)bold(xi)_1=0,bold(A)bold(xi)_2=0,$则$bold(A)(k_1bold(xi)_1+k_2bold(xi)_2)=0$
    + 若$bold(A)_(m times n),r(bold(A))=n,bold(A B)=bold(A C),$则$bold(B)=bold(C)$
  ]
  subsec[基础解系和解的结构]
  [
    + *基础解系*：设$bold(xi)_1,bold(xi)_2,dots,bold(xi)_(n-r)$满足$ cases("是方程组"bold(A x)=0"的解", "线性无关", "方程"bold(A x)=0"的任意解均可由"bold(xi)_1","bold(xi)_2","dots","bold(xi)_(n-r)"线性表示") $则称$bold(xi)_1,bold(xi)_2,dots,bold(xi)_(n-r)$为方程组的*基础解系*
  ]
  section[非齐次线性方程组]
  [
    $ bold(A)_(m times n) bold(x)=bold(b) $
  ]
  subsec[有解条件]
  [
    若$r(bold(A))eq.not r([bold(A","b)]),$则方程组无解

    若$r(bold(A))=r([bold(A","b)])=n$,则方程组有唯一解

    若$r(bold(A))=r([bold(A","b)])=r<n$,则方程组有无穷多解.
  ]
  subsec[解的性质]
  [
    设$bold(eta)_1,bold(eta)_2,bold(eta)$是非齐次线性方程组$bold(A x)=bold(b)$的解，$bold(xi)$是对应齐次线性方程$bold(A x)=0$的解，则:(1)$bold(eta)_1-bold(eta)_2$是$bold(A x)=bold(b)$的解，（2）$k bold(xi)+bold(eta)$是$bold(A x)=bold(b)$的解
  ]
  subsec[求解]
  [
    + 求$bold(A x)=0$的通解$k_1 bold(xi)_1+k_2 bold(xi)_2+dots+k_(n-r)bold(xi)_(n-r)$
    + 求出$bold(A x)=bold(b)$的一个特解$bold(eta)$
    + 由$bold(A x)=bold(b)$的通解为$bold(eta)+k_1 bold(xi)_1+k_2 bold(xi)_2+dots+k_(n-r)bold(xi)_(n-r)$
  ]
  section[方程组公共解]
  [
    齐次线性方程组$bold(A)_(m times n)bold(x)=0,bold(B)_(m times n)x=0$的公共解是满足方程组$vec(delim: "[", bold(A), bold(B))bold(x)=0$的解；非齐次线性方程组$bold(A)_(m times n)bold(x)=bold(alpha),bold(B)_(m times n)x=bold(beta)$的公共解是满足方程组$vec(delim: "[", bold(A), bold(B))bold(x)=vec(delim: "[", bold(alpha), bold(beta))$的解
  ]
  section[同解方程组]
  [
    若两个方程组$bold(A)_(m times n)bold(x)=0$和$bold(B)_(s times n)bold(x)=0$有完全相同的解，称他们为同解方程组

    $bold(A)_(m times n)bold(x)=0$和$bold(B)_(s times n)bold(x)=0$同解方程组

    $arrow.double.l.r bold(A x)=0$的解满足$bold(B x)=0$,且$bold(B x)=0$的解满足 $bold(A x)=0$

    $arrow.double.l.r r(bold(A))=r(bold(B)),$且$bold(A x)=0$的解满足$bold(B x)=0$(或$bold(B x)=0$的解满足$bold(A x)=0$)

    $arrow.double.l.r r(bold(A))=r(bold(B))=r(vec(delim: "[", bold(A), bold(B)))$
  ]
}
#线性方程组
