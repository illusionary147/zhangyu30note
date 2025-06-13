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


#outline()
#pagebreak()

#let 矩阵 = {
  section[伴随矩阵]
  subsec[性质]
  [
    对任意$n$阶方阵$bold(A)$,都有伴随矩阵$bold(A)^*$,且
    $ bold(A)^*bold(A)=bold(A)bold(A)^*=abs(bold(A)bold(E)),abs(bold(A)^*)=abs(bold(A))^(n-1) $
    当$abs(bold(A)) eq.not 0$时，有
    $ bold(A)^*=abs(bold(A))bold(A)^(-1),bold(A)^(-1)=1 / (abs(bold(A)))bold(A)^*,bold(A)=abs(bold(A))(bold(A)^*)^(-1) $
    $
      (bold(A)^TT)^*=(bold(A)^*)^TT,(bold(A)^(-1))^*=(bold(A)^*)^(-1),(bold(A B))^*=bold(B)^* bold(A)^*,(bold(A)^*)^*=abs(bold(A))^(n-2)bold(A)
    $
  ]
  subsec[用伴随矩阵求可逆矩阵的逆]
  [
    + 判断$abs(bold(A))$是否为零
    + 写出伴随矩阵$bold(A)^*$
    + 计算$bold(A)^(-1)=1 / (abs(bold(A)))bold(A)^*$
  ]
  subsec[求伴随矩阵]
  [
    + 定义
    + 若$bold(A)$可逆，则$bold(A)^*=abs(bold(A))(bold(A)^(-1))$
  ]
  section[初等变换与初等矩阵]
  subsec[初等变换]
  [
    倍乘、互换、倍加
  ]
  subsec[初等矩阵]
  [
    由单位矩阵经过一次初等变换得到的矩阵称为初等矩阵
    + $bold(E)_i (k)$表示单位矩阵第$i$行（列）倍乘$k(k eq.not 0)$
    + $bold(E)_(i j)$表示单位矩阵第$i$行（列）与第$j$行（列）互换
    + $bold(E)_(i j) (k)$表示单位矩阵第$i$列$k$倍加到第$j$列，或单位矩阵第$j$行$k$倍加至第$i$行

  ]
  subsec[初等矩阵的性质与重要公式]
  [
    + 初等矩阵的转置仍是初等矩阵
    + 初等矩阵都是可逆矩阵，其逆矩阵仍是初等矩阵
    + 若矩阵是可逆矩阵，则可分解为有限个初等矩阵的乘积$ [bold(E)_i (k)]^(-1)=bold(E_i)(1 / k),bold(E)_(i j)^(-1)=bold(E)_(i j),[bold(E)_(i j)(k)]^(-1)=bold(E)_(i j)(-k) $
  ]
  subsec[简单分块矩阵的逆]
  [
    若$bold(A),bold(B)$均是可逆方阵，则$ mat(delim: "[", bold(A), bold(O); bold(O), bold(B))^(-1)=mat(delim: "[", bold(A)^(-1), bold(O); bold(O), bold(B)^(-1)),mat(delim: "[", bold(O), bold(A); bold(B), bold(O))^(-1)=mat(delim: "[", bold(O), bold(B)^(-1); bold(A)^(-1), bold(O)) $
  ]
  section[矩阵的秩]
  subsec[定义]
  [
    设$bold(A)$是$m times n$矩阵，若存在$k$阶子式不为零，而任意$k+1$阶子式均为零，则称$bold(A)$的秩为$k$,记作$r(bold(A))=k$，且若$bold(A)$为方阵，则$ r(bold(A)_(n times n))=n arrow.double.l.r abs(bold(A))eq.not 0 arrow.double.l.r bold(A)"可逆" $
  ]
  subsec[求法]
  [
    将矩阵$bold(A)$用行初等变换化为行阶梯矩阵，非零行数即为$bold(A)$的秩
  ]
  subsec[性质]
  [
    设$bold(A)$是$m times n$矩阵,$bold(B)$是满足有关矩阵运算要求的矩阵，则
    + $ 0<=r(bold(A))<=min{m,n} $
    + $ r(k bold(A))=r(bold(A))(k eq.not 0) $
    + $ r(bold(A B))<=min{r(bold(A)),r(bold(B))} $
    + $ r(bold(A+B))<=r(bold(A))+r(bold(B)) $
    + $
        r(bold(A)^*)=cases(n "if   " r(bold(A))=n, 1 "if   " r(bold(A))=n-1, 0 "if   " r(bold(A))<n-1),"其中"bold(A)"为"n(n>=2)"方阵"
      $
    + 设$bold(P),bold(Q)$分别是$m,n$阶可逆矩阵，则$ r(bold(A))=r(bold(P A))=r(bold(A Q))=r(bold(P A Q)) $
    + 若$bold(A)_(m times n)bold(B)_(n times s)=bold(O),$则$r(bold(A))+r(bold(B))<=n$
    + $ r(bold(A))=r(bold(A)^TT)=r(bold(A)^TT bold(A))=r(bold(A) bold(A)^TT) $
    + 若方阵的秩为1或0，则可拆分为一个行向量与一个列向量的外积，即$ bold(A)=bold(a) bold(b)^T $其中$bold(a)$是$n$维列向量，$bold(b)$是$n$维行向量
  ]
}

#矩阵
