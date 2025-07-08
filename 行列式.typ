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


#outline()
#pagebreak()

#let 行列式 = {
  section[定义]
  [
    $n(n>=3)$阶行列式是由n个n维向量$bold(alpha_1)=[a_11,a_12,dots,a_(1n)],bold(alpha_2)=[a_21,a_22,dots,a_(2n)],dots,bold(alpha_n)=[a_(n 1),a_(n 2),dots,a_(n n)]$组成的，其结果为以这n个向量为邻边的n维图形的体积
  ]
  section[性质]
  [
    + 行列互换，行列式的值不变，即$abs(bold(A))=abs(bold(A)^TT)$
    + 若行列式中某一行或某一列元素全为0，则行列式值为0
    + 若行列式某行或某列元素均有公因子$k$,则可提出$k$
    + 若行列式某行或某列元素均是两数之和，则可拆成两个行列式之和$ mat(delim: "|", a_11, a_12, dots, a_(1n); dots.v, dots.v, , dots.v; a_(i 1)+b_(i 1), a_(i 2)+b_(i 2), dots, a_(i n)+b_(i n); dots.v, dots.v, , dots.v; a_(n 1), a_(n 2), dots, a_(n n))=mat(delim: "|", a_11, a_12, dots, a_(1n); dots.v, dots.v, , dots.v; a_(i 1), a_(i 2), dots, a_(i n); dots.v, dots.v, , dots.v; a_(n 1), a_(n 2), dots, a_(n n))+mat(delim: "|", a_11, a_12, dots, a_(1n); dots.v, dots.v, , dots.v; b_(i 1), b_(i 2), dots, b_(i n); dots.v, dots.v, , dots.v; a_(n 1), a_(n 2), dots, a_(n n)) $
    + 行列式两行或两列互换，行列式的值变号
    + 行列式两行（列）元素相等或对应成比例，则行列式值为0
    + 行列式中某行（列）的k倍加到另一行（列）上，行列式的值不变
  ]
  section[行列式展开]
  subsec[余子式]
  [
    $bold(M)_(i j)$是行列式$bold(M)$中去掉第$i$行和第$j$列后剩下的行列式
  ]
  subsec[代数余子式]
  [
    $bold(A)_(i j)=(-1)^(i+j)bold(M)_(i j)$
  ]
  subsec[行列式按某一行（列）展开的展开公式]
  [
    行列式等于行列式的某一行（列）元素与其对应的代数余子式的乘积之和，即$ abs(bold(A))=cases(sum_(j=1)^(n)a_(i j)A_(i j)(i=1,2,dots,n), sum_(i=1)^(n)a_(i j)A_(i j)(j=1,2,dots,n)) $

    行列式的某一行（列）元素分别乘另一行（列）元素的代数余子式后再求和，结果为零
  ]
  section[几个重要的行列式]
  subsec[主对角线行列式（上/下）三角行列式]
  [
    $
      mat(delim: "|", a_11, a_12, dots, a_(1 n); 0, a_22, dots, a_(2 n); dots.v, dots.v, , dots.v; 0, 0, dots, a_(n n))=mat(delim: "|", a_11, 0, dots, 0; a_21, a_22, dots, 0; dots.v, dots.v, , dots.v; a_(n 1), a_(n 2), dots, a_(n n))=mat(delim: "|", a_11, 0, dots, 0; 0, a_22, dots, 0; dots.v, dots.v, , dots.v; 0, 0, dots, a_(n n))=a_11 a_22 dots a_(n n)=limits(Pi)_(i=1)^(n)a_(i i)
    $
  ]
  subsec[副对角线行列式]
  [
    $
      mat(delim: "|", a_11, dots, a_(1,n-1), a_(1 n); a_21, dots, a_(2,n-1), 0; dots.v, , dots.v, dots.v; a_(n 1), dots, 0, 0)=mat(delim: "|", 0, dots, 0, a_(1 n); 0, dots, a_(2,n-1), a_(2 n); dots.v, , dots.v, dots.v; a_(n 1 ), dots, a_(n,n-1), a_(n n ))=(-1)^(n(n-1) / 2) a_(1 n)a_(2 ,n-1)dots a_(n 1)
    $
  ]
  subsec[拉普拉斯展开式]
  [
    $
      mat(delim: "|", bold(A), bold(O); bold(O), bold(B))=mat(delim: "|", bold(A), bold(C); bold(O), bold(B))=mat(delim: "|", bold(A), bold(O); bold(C), bold(B))=abs(bold(A))abs(bold(B))
    $$
      mat(delim: "|", bold(O), bold(A); bold(B), bold(O))=mat(delim: "|", bold(C), bold(A); bold(B), bold(O))=mat(delim: "|", bold(O), bold(A); bold(B), bold(C))=(-1)^(m n)abs(bold(A))abs(bold(B))
    $
    $bold(A),bold(B)$分别为$m,n$阶矩阵
  ]
  subsec[范德蒙行列式]
  [
    $
      mat(delim: "|", 1, x_1, x_1^2, dots, x_1^(n-1); 1, x_2, x_2^2, dots, x_2^(n-1); dots.v, dots.v, , dots.v; 1, x_n, x_n^2, dots, x_n^(n-1))=limits(Pi)_(1<=i<j<=n)(x_j-x_i)
    $
  ]
  subsec[其他]
  [
    $abs(bold(A)dot bold(B))=abs(bold(A))dot abs(bold(B))$
  ]
  section[余子式与代数余子式的线性组合计算]
  [

  ]
  section[克拉默法则]
  [
    + 对$n$个方程$n$个未知数的非齐次线性方程组若系数行列式$ D=mat(delim: "|", a_11, a_12, dots, a_(1 n); a_21, a_22, dots, a_(2 n); dots.v, dots.v, , dots.v; a_(n 1), a_(n 2), dots, a_(n n))eq.not 0, $则方程组有唯一解，且解为$ x_i=D_i / D,i=1,2,dots,n $$D_i$是常数项$b_1,b_2,dots,b_n$替换$D$第$i$列后的行列式.若$D=0$,则该方程组无解或有无穷多解
    + 对$n$个方程$n$个未知数的齐次线性方程组若系数行列式$D eq.not 0$,则该方程组只有零解，若$D=0$,则齐次方程组有非零解
  ]
}

#行列式
