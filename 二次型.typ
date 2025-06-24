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
#let 二次型 = {
  section[合同变换、二次型的合同标准形、规范形]
  subsec[线性变换定义]
  [
    对于$n$元二次型$f(x_1,x_2,dots,x_n)$来说，$ bold(x)=bold(C)bold(y) $称为线性变换，若线性变换的系数矩阵$bold(C)$可逆，则称为可逆线性变换。

    $f(bold(x))=bold(x)^TT bold(A x)$,令$bold(x)=bold(C y)$,则$ f(bold(x))=f(bold(C y))=(bold(C y))^TT bold(A (bold(C y)))=bold(y)^TT (bold(C)^TT bold(A C))bold(y) $
    记$bold(B)=bold(C)^TT bold(A C)$,则$ f(bold(x))=bold(y)^TT bold(B)bold(y)=g(bold(y)) $

    此时原二次型通过线性变换$bold(x)=bold(C y)$得到一个新二次型$g(bold(y))=bold(y)^TT bold(B)bold(y)$.
  ]
  subsec[矩阵合同性质与定义]
  [
    *定义*~~设$bold(A),bold(B)$为$n$阶矩阵，若存在可逆矩阵$bold(C)$使得$ bold(B)=bold(C)^T bold(A) bold(C) $则称$bold(A)$与$bold(B)$合同，记为$bold(A) tilde.eq bold(B)$。称对应的二次型$f(bold(x)),g(bold(y))$为合同二次型

    合同具有反身性，对称性，传递性
  ]
  subsec[二次型的标准形，规范形]
  [
    若二次型只含有平方项，没有交叉项，称为*标准形*

    若标准形中系数的取值仅有$1,-1,0$，则称为*规范形*

    *定理1*~~任何二次型均可通过配方法化成标准形及规范形，用矩阵语言表达为：对任何实对称矩阵$bold(A)$，必存在可逆矩阵$bold(C)$使得$bold(C)^TT bold(A C)=bold(Lambda)$

    *定理2*~~任何二次型都可以通过正交变换$bold(x)=bold(Q y)$化成标准形，用矩阵语言表达为：任何实对称矩阵$bold(A)$，一定存在正交矩阵$Q$使得$bold(Q)^T bold(A Q)=bold(Lambda)$
  ]
  section[惯性定理]
  [
    无论许纳区什么样的可逆线性变换，将二次型化为*标准形或规范形*，二次型的惯性数$(p,q)$不变。$p$为正项个数，$q$为负项个数。

    两个二次型（或实对称矩阵）合同的充要条件是具有相同的正、负惯性指数，或者有相同的秩及正（或负）惯性指数，或有相同的正、负特征值个数
  ]
  section[正定二次型及判别]
  subsec[定义]
  [
    $n$元二次型$f(x_1,x_2,dots,x_n)=bold(x)^TT bold(A)bold(x)$,若对任意$bold(x)=[x_1,x_2,dots,x_n]^TT eq.not 0$,均有$bold(x)^TT bold(A x)>0$,则称$f$为*正定二次型*，此时$bold(A)$为*正定矩阵*

    令$f$为一个正的常数，其几何图形是封闭的
  ]
  subsec[二次型正定的充要条件]
  [
    $n"元二次型"f=bold(x)^TT bold(A x)"正定" & arrow.double.l.r "对于任意"bold(x) eq.not 0,"均有"bold(x)^TT bold(A x)>0 \ & arrow.l.r.double"存在可逆矩阵"D"使"bold(A)=bold(D)^TT bold(D) \ & arrow.double.l.r ""f "的正惯性指数"p=n \ & arrow.double.l.r bold(A) tilde.eq bold(E) \ & arrow.double.l.r bold(A)"的特征值" lambda_i>0(i=0,1,dots,n) \ & arrow.double.l.r bold(A)"的全部顺序主子式（左上角主子式）均大于"0$

  ]
  subsec[二次型正定必要条件]
  [
    + $a_(i i)>0(i=1,2,dots,n)$
    + $abs(bold(A))>0$
  ]
}
#二次型
