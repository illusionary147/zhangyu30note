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
#let 特征值与特征向量 = {
  section[特征值与特征向量的定义]
  [
    设$bold(A)$是$n$阶矩阵，$lambda$是一个数，如果存在非零向量$bold(xi)$使得
    $ bold(A) bold(xi) = lambda bold(xi) $则称$lambda$是$bold(A)$的一个特征值，$bold(xi)$是对应于$lambda$的特征向量。
  ]
  section[特征值、特征向量的性质与重要结论]
  subsec[特征值的性质与重要结论]
  [
    + $lambda_0$是$bold(A)$的特征值$arrow.double.l.r abs(lambda_0 bold(E) -bold(A))=0$；$lambda_0$不是$bold(A)$的特征值$arrow.double.l.r abs(lambda_0 bold(E)-bold(A))eq.not 0$
    + 若$lambda_1,lambda_2,dots,lambda_n$是$bold(A)$的$n$个特征值，则$ cases(abs(bold(A))=lambda_1 lambda_2 dots lambda_n, tr(bold(A))=lambda_1+lambda_2+dots+lambda_n) $
  ]
  subsec[特征值、特征向量的性质与重要结论]
  [
    + $bold(xi)(eq.not 0)$是$bold(A)$的属于特征值$lambda$的特征向量$arrow.double.l.r bold(xi)$是$(lambda_0 bold(E)-bold(A))bold(x)=0$的非零解
    + $k$重特征值最多只有$k$个线性无关的特征向量
    + 若$bold(xi)_1,bold(xi)_2$是$bold(A)$的属于不同特征值$lambda_1,lambda_2$的特征向量，则$bold(xi)_1,bold(xi)_2$线性无关
    + 若$bold(xi)_1,bold(xi)_2$是$A$的属于同一特征值$lambda$的特征向量，则$k_1bold(xi)_1+k_2bold(xi)_2$仍是$bold(A)$的属于特征值$lambda$的特征向量（$k_1,k_2$为任意常数）
    + 若$bold(xi)_1,bold(xi)_2$是$bold(A)$的属于不同特征值$lambda_1,lambda_2$的特征向量，则当$k_1 eq.not 0,k_2 eq.not 0$时，$k_1 bold(xi)_1+k_2 bold(xi)_2$不是$bold(A)$的任何特征值的特征向量
    + 设$lambda_1,lambda_2$是$bold(A)$的两个不同特征值，$bold(xi)$是对应于$lambda_1$的特征向量，则$bold(xi)$不是对应于$lambda_2$的特征向量
  ]
  subsec[常用矩阵的特征值与特征向量]
  [
    #align(center)[#table(
        columns: 8,
        [矩阵], $bold(A)$, $k bold(A)$, $bold(A)^k$, $f(bold(A))$, $bold(A)^(-1)$, $bold(A)^*$, $bold(P^(-1) A P)$,
        [特征值], $lambda$, $k lambda$, $lambda^k$, $f(lambda)$, $1 / lambda$, $abs(bold(A)) / lambda$, $lambda$,
        [对应的特征向量],
        $bold(xi)$,
        $bold(xi)$,
        $bold(xi)$,
        $bold(xi)$,
        $bold(xi)$,
        $bold(xi)$,
        $bold(P^(-1) bold(xi))$,
      )]
  ]
  section[矩阵相似]
  subsec[定义]
  [
    设$bold(A),bold(B)$是$n$阶方阵，如果存在可逆矩阵$bold(P)$使得$bold(A)=bold(P^(-1) bold(B) bold(P))$，则称$bold(A)$与$bold(B)$相似，记作$bold(A) tilde bold(B)$。
  ]
  subsec[相似矩阵性质]
  [
    若$bold(A)tilde bold(B)$,则：
    + $abs(bold(A))=abs(bold(B))$
    + $r(bold(A))=r(bold(B))$
    + $tr(bold(A))=tr(bold(B))$
    + $lambda_A=lambda_B$
    + $r(lambda bold(E)-bold(A))=r(lambda bold(E)-bold(B))$
    + $bold(A),bold(B)$各阶主子式之和分别相等
  ]
  subsec[重要结论]
  [
    + 若$bold(A)tilde bold(B)$,则$bold(A)^k tilde bold(B)^k,f(bold(A))tilde f(bold(B))$
    + 若$bold(A)tilde bold(B)$且$bold(A)$可逆，则$bold(A)^(-1) tilde bold(B)^(-1)$
    + 若$bold(A)tilde bold(B),$则$bold(A)^* tilde bold(B)^*$
    + 若$bold(A)tilde bold(B)$则$bold(A)^TT tilde bold(B)^TT$
    + 若$bold(A)tilde bold(C),bold(B)tilde bold(D),$则$mat(bold(A), bold(O); bold(O), bold(B))tilde mat(bold(C), bold(O); bold(O), bold(D))$
  ]
  subsec[相似的判别与证明]
  [
    + 定义法：若存在可逆矩阵$P$,使得$bold(P)^(-1)bold(A P),$则$bold(A) tilde bold(B)$
    + 传递性：若$bold(A) tilde bold(B),bold(B) tilde bold(C)$,则$bold(A) tilde bold(C)$
  ]
  section[矩阵相似对角化]
  subsec[定义]
  [
    设$bold(A)$为$n$阶矩阵，若存在$n$阶可逆矩阵$bold(P)$,使得$bold(P)^(-1)bold(A P)=bold(Lambda)$,其中$bold(Lambda)$是对角矩阵，则$bold(A)$可相似对角化，记$bold(A)tilde bold(Lambda),$称$bold(Lambda)$是$bold(A)$的相似标准形。
  ]
  subsec[矩阵可相似对角化的条件]
  [
    由定义可知，若$bold(A)$可相似对角化，在$bold(P)^(-1)bold(A P)=bold(Lambda)$两端同时左乘$bold(P)$,有$bold(A P)=bold(P Lambda)$

    $n$阶矩阵$bold(A)$可相似对角化$arrow.double.l.r bold(A)$有$n$个线性无关的特征向量$arrow.double.l.r bold(A)$对应与每个$k_i$重特征值都有$k_i$个线性无关的特征向量

    $n$阶矩阵$bold(A)$有$n$个不同特征值$arrow.double bold(A)$可相似对角化

    $n$阶矩阵$bold(A)$为实对称矩阵$arrow.double bold(A)$可相似对角化
  ]
  subsec[求可逆矩阵$bold(P)$,使得$bold(P)^(-1)bold(A P)=bold(Lambda)$]
  [
    已知$bold(A)$可相似对角化的条件下
    + 求$bold(A)$的特征值
    + 求$bold(A)$的对应于特征值的特征向量
    + $bold(P)=[bold(xi)_1,bold(xi)_2,dots,bold(xi)_n]$则$bold(P)^(-1)bold(A P)=mat(delim: "[", lambda_1, , ; , lambda_2, ; , , dots.down, ; , , , lambda_n)$

    *$P$中特征向量*$bold(xi_i)$*的顺序可以任意，但特征值*$lambda_i$*的顺序必须与*$bold(xi_i)$*对应，即*$lambda_i$*是*$bold(xi_i)$*对应的特征值。*
  ]
  subsec[由特征值、特征向量反求$bold(A)$]
  [
    $ bold(A)=bold(P Lambda P)^(-1) $
  ]
  subsec[求$bold(A)^k,f(bold(A))$]
  [
    $ bold(A)^k=bold(P)mat(delim: "[", lambda_1^k, , ; , lambda_2^k, ; , , dots.down, ; , , , lambda_n^k)bold(P)^(-1) $
    $
      f(bold(A))=bold(P)mat(delim: "[", f(lambda_1), , ; , f(lambda_2), ; , , dots.down, ; , , , f(lambda_n))bold(P)^(-1)
    $
  ]
  section[实对称矩阵的相似对角化]
  subsec[实对称矩阵性质]
  [
    + 实对称矩阵的特征值都是实数，特征向量是实向量
    + 实对称矩阵的属于不同特征值的特征向量相互正交
    + 对于任意$n$阶实对称矩阵$bold(A)$,存在$n$阶正交矩阵$bold(Q)$,使得$ bold(Q)^TT bold(A Q)=bold(Q)^(-1)bold(A Q)=mat(delim: "[", lambda_1, , ; , lambda_2, ; , , dots.down, ; , , , lambda_n) $
  ]
  subsec[实对称矩阵相似对角化基本步骤]
  [
    + 求特征值
    + 求特征值对应的特征向量
    + 正交化，单位化得$bold(eta)_1,bold(eta_2),dots,bold(eta)_n$
    + 令$bold(Q)=[bold(eta)_1,bold(eta_2),dots,bold(eta)_n]$,则$bold(Q)$是正交矩阵，且$bold(Q)^(-1)bold(A Q)=bold(Q)^TT bold(A Q)=bold(Lambda)$
  ]
  subsec[施密特正交化公式]
  [
    设$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$线性无关但不正交，令$ bold(beta)_1=bold(alpha)_1,bold(beta)_2=bold(alpha)_2-((bold(beta)_1,bold(alpha)_2)) / ((bold(beta)_1,bold(beta)_1))bold(beta)_1,bold(beta)_3=bold(alpha)_3-((bold(beta)_1,bold(alpha)_3)) / ((bold(beta)_1,bold(beta)_1))bold(beta)_1-((bold(beta)_2,bold(alpha)_3)) / ((bold(beta)_2,bold(beta)_2))bold(beta)_2 $
  ]
}

#特征值与特征向量
