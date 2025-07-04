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

#let 多维随机变量及其分布 = {
  section[$n$维随机变量及其分布函数]
  subsec[$n$维随机变量的概念]
  [
    如果$X_1,X_2,dots,X_n$是定义在同一个样本空间$Omega$上的$n$个随机变量，则称$(X_1,X_2,dots,X_n)$为$n$维随机变量，或$n$维随机向量，$X_i (i=1,2,dots,n)$称为第$i$个分量

    当$n=2$时，称$(X,Y)$为二维随机变量或二维随机向量
  ]
  subsec[$n$维随机变量的分布函数的概念和性质]
  [
    + 概念

      对任意$n$个实数$x_1,x_2,dots,x_n$，称$n$元函数$ F(x_1,x_2,dots,x_n)=P{X_1<=x_1,X_2<=x_2,dots,X_n<=x_n} $为$n$维随机变量$(X_1,X_2,dots,X_n)$的分布函数或随机变量$X_1,X_2,dot,X_n$的联合分布函数

      当$n=2$时，对任意的实数$x,y$,称二元函数$ F(x,y)=P{X<=x,Y<=y} $为二维随机变量$(X,Y)$的分布函数或随机变量$X,Y$的联合分布函数

    + 性质

      - 单调性 $F(x,y)$是$x,y$的单调不减函数
      - 右连续性 $F(x,y)$是$x,y$的右连续函数
      - 有界性 $F(-oo,y)=F(x,-oo)=F(-oo,-oo)=0,F(+oo,+oo)=1$
      - 非负性 对任意$x_1<x_2,y_1<y_2$，有$P{x_1<X<=x_2,y_1<Y<=y_2} =F(x_2,y_2)-F(x_1,y_2)-F(x_2,y_1)+F(x_1,y_1) >= 0$

  ]
  subsec[边缘分布函数]
  [
    设二维随机变量$(X,Y)$的分布函数为$F(x,y)$，随机变量$X$与随机变量$Y$的分布函数$F_X ( x),F_Y (y)$分别称为$(X,Y)$关于$X 和 Y$的边缘分布函数。由概率性质得$ F_X (x)= & P{X<=x}=P{X<=x,Y<+oo}                    \
           = & limits(lim)_(y arrow +oo)P{X<=x,Y<=y}    \
           = & limits(lim)_(y arrow +oo)F(x,y)=F(x,+oo) $
  ]
  section[常见的二维随机变量得概率分布------离散型随机变量与连续型随机变量]
  subsec[二维离散型随机变量得概率分布、边缘分布和条件分布]
  [
    + $p_(i j)=P{X=x_i,Y=y_i},i,j=1,2,dots$
    + 数列${p_(i j)},i,j=1,2,dots$是某一二维离散型随机变量的概率分布的充要条件是$ p_(i j)>=0,limits(Sigma)_(i=1)^(oo)limits(Sigma)_(j=1)^(oo)p_(i j)=1 $
    + 联合分布函数$ F(x,y)=P{X<=x,Y<=y}=limits(Sigma)_(x_i<=x)limits(Sigma)_(y_i<=y)p_(i j) $设$G$是平面上的某个区域，则$ P{(X,Y)in G}=limits(Sigma)_((x_i,y_j)in G)p_(i j) $
    + $X,Y$的边缘分布分别为$ p_(i dot)=P{X=x_i}=limits(Sigma)_(j)^(oo)P{X=x_i,Y=y_j} $和$ p_(dot j)=P{Y=y_j}=limits(Sigma)_(i)^(oo)P{X=x_i,Y=y_j} $
    + 条件分布$ P{X=x_i|Y=y_j}=P{X=x_i,Y=y_j}/P{Y=y_j}=p_(i j)/p_(dot j) $和$ P{Y=y_j|X=x_i}=P{X=x_i,Y=y_j}/P{X=x_i}=p_(i j)/p_(i dot) $
  ]
  subsec[二维连续型随机变量的概率分布、边缘分布和条件分布]
  [
    + 边缘概率密度 $ F_X (x)=F(x,+oo)=integral_(-oo)^x [integral_(-oo)^(+oo)f(u,v)dd(v)]dd(u) $$ f_X (x) = integral_(-oo)^(+oo)f(x,y)dd(y) $

    + 条件概率密度 $ f_(Y bar X)(y bar x)=f(x,y)/(f_X (x)) $
    + 条件分布函数 $ F_(Y bar X)(y bar x)=integral_(-oo)^y f_(Y bar X)(v bar x)dd(v)=integral_(-oo)^y f(x,v)/(f_X (x))dd(v) $
  ]
  section[随机变量的相互独立性]
  subsec[概念]
  [
    + 设二维随机变量$(X,Y)$的分布函数为$F(x,y)$，如果边缘分布函数$F_X (x),F_Y (y)$满足$ F(x,y)=F_X (x) dot F_Y (y), $则称随机变量$X,Y$是相互独立的

    + 若$n$维随机变量$(X_1,X_2,dots,X_n)$的分布函数$F(x_1,x_2,dots,x_n)$满足$ F(x_1,x_2,dots,x_n)=F_(X_1)(x_1) dot F_(X_2)(x_2) dot dots dot F_(X_n)(x_n)， $则称随机变量$X_1,X_2,dots,X_n$是相互独立的

    + 若对任意实数$x_i (i=1,2,dots,n)$与$y_j (j=1,2,dots,m)$有$   & P{X_1<=x_1,X_2<=x_2,dots,X_n<=x_n,Y_1<=y_1,Y_2<=y_2,dots,Y_m<=y_m}       \
      = & P{X_1<=x_1,X_2<=x_2,dots,X_n<=x_n}dot P{Y_1<=y_1,Y_2<=y_2,dots,Y_m<=y_m} $即联合分布函数等于各自部分的分布函数相乘：$ F(x_1,x_2,dots,x_n,y_1,y_2,dots,y_m)=F(x_1,x_2,dots,x_n)dot F(y_1,y_2,dots,y_m) $则两个多维随机变量$(X_1,X_2,dots,X_n)$与$(Y_1,Y_2,dots,Y_m)$是相互独立的
  ]
  subsec[相互独立的充要条件]
  [
    + $n$个随机变量$X_1,X_2,dots,X_n$相互独立\ $arrow.double.l.r$对任意的$n$个实数$x_i$,$n$个事件${X_1<=x_1},{X_2<=x_2},dots,{X_n<=x_n}$相互独立
    + 设$(X,Y)$为二维离散型随机变量，则\
      $X,Y$相互独立$arrow.double.l.r$联合分布律等于边缘分布相乘
    + $n$个离散型随机变量$X_1,X_2,dots,X_n$相互独立\ $arrow.double.l.r$对任意的$x_i in D_i={X"的一切可能值"}(i=1,2,dots,n),$有$ P{X_1=x_1,X_2=x_2,dots,X_n=x_n}=limits(Pi)_(i=1)^n P{X_i=x_i} $
    + 设$(X,Y)$为二维连续型随机变量，则\
      $X,Y$相互独立$arrow.double.l.r$联合概率密度函数等于边缘概率密度函数的乘积：$ f(x,y)=f_X (x) dot f_Y (y) $
    + $n$个连续型随机变量$X_1,X_2,dots,X_n$则\
      $X_1,X_2,dots,X_n$相互独立$arrow.double.l.r$联合概率密度函数等于边缘概率密度函数的乘积：$ f(x_1,x_2,dots,x_n)=f_(X_1)(x_1) dot f_(X_2)(x_2) dot dots dot f_(X_n)(x_n) $
  ]
  subsec[相互独立的性质]
  [
    + 设$X_1,X_2,dots,X_n$相互独立，则其中任意$k(2<=k<=n)$个随机变量也相互独立
    + 设$(X,Y)$为二维离散型随机变量，且相互独立，则条件分布等于边缘分布$ P{X=x_i bar Y=y_j}=P{X=x_i} $$ P{Y=y_j bar X=x_i}=P{Y=y_j} $
    + 设$(X,Y)$为连续型随机变量且相互独立，则条件概率密度等于边缘概率密度$ f_(Y|X)(y|x)=f(x,y)/(f_X (x))=(f_X (x)f_Y (y))/(f_X (x))=f_Y (y) $
    + 若$X_1,X_2,dots,X_n$相互独立，$g_1 ( x),g_2 (x),dots,g_n (x)$为一元函数，则$g_1 (X_1),g_2 (X_2),dots,g_n (X_n)$相互独立
  ]
  section[相互独立随机变量函数的分布和卷积公式]
  [
    + 和的分布

      设$(X,Y)~f(x,y),$则$Z=X+Y$的概率密度为$ f_Z (z)=integral_(-oo)^(+oo)f(x,z-x)dd(x)=integral_(-oo)^(+oo)f(z-y,y)dd(y) $

    + 差的分布

      设$(X,Y)~f(x,y),$则$Z=X-Y$的概率密度为$ f_Z (z)=integral_(-oo)^(+oo)f(x,x-z)dd(x)=integral_(-oo)^(+oo)f(z+y,y)dd(y) $

    + 积的分布

      设$(X,Y)~f(x,y),$则$Z=X Y$的概率密度为$ f_Z (z)=integral_(-oo)^(+oo) 1/abs(x) f(x,z/x)dd(x)=integral_(-oo)^(+oo) 1/abs(y) f(z/y,y)dd(y) $

    + 商的分布

      设$(X,Y)~f(x,y),$则$Z=X/Y$的概率密度为$ f_Z (z)=integral_(-oo)^(+oo) 1/abs(y) f(z y,y)dd(y) $

    + 常见分布可加性

      - 若$X~B(n,p),Y~B(m,p),$则$X+Y~B(m+n,p)$
      - 若$X~P(lambda_1),Y~P(lambda_2),$则$X+Y~P(lambda_1+lambda_2)$
      - 若$X~N(mu_1,sigma_1^2),Y~N(mu_2,sigma_2^2),$则$X+Y~N(mu_1+mu_2,sigma_1^2+sigma_2^2)$
      - 若$X~chi^2 (n),Y~chi^2(m),$则$X+Y~chi(n+m)$

    + 万能计算方法

      设$(X,Y)$是二维随机变量，且$(X,Y)~f(x,y)$,若$cases(u=u(x,y), v=v(x,y))$,且$u,v$具有连续的一阶偏导数，$cases(x=x(u,v), y=y(u,v))$是其唯一反函数，则$(X,Y)$的函数$cases(U=U(X,Y), V=V(X,Y))$的$f_(U,V) (u,v)=f[x(u,v),y(u,v)]dot abs(J)$其中$ J=pdv((x,y), (u,v))=mat(delim: "|", pdv(x, u), pdv(x, v); pdv(y, u), pdv(y, v))=[pdv((u,v), (x,y))]^(-1)=mat(delim: "|", pdv(u, x), pdv(u, y); pdv(v, x), pdv(v, y))^(-1) eq.not 0 $
  ]
}

#多维随机变量及其分布
