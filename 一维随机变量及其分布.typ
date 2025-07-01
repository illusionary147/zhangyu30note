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

#let 一维随机变量及其分布 = {
  section[随机变量的及其分布函数的概念、性质及应用]
  subsec[分布函数的概念及性质]
  [
    + 概念

      设$X$是随机变量，$x$是任意实数，称函数$F(x)=P{X<=x}(x in RR)$为随机变量$X$的分布函数，或称$X$服从$F(x)$分布，记为$X tilde F(x)$
    + 性质

      - $F(x)$是$x$的单调不减函数，即对任意实数$x_1<x_2$,有$F(x_1)<=F(x_2)$
      - $F(x)$是$x$的右连续函数，即对任意实数$x$，有$limits(lim)_(x arrow x_0^+) F(x)=F(x_0+0)=F(x_0)$
      - $F(-oo) =limits(lim)_(x arrow -oo)F(x)= 0, F(+ oo) =limits(lim)_(x arrow +oo)F(x)= 1$
  ]
  subsec[分布函数的应用------求概率]
  [
    - $P{X<=a}=F(a)$
    - $P{X<a}=F(a-0)$
    - $P{X=a}=F(a)-F(a-0)$
    - $P{a<X<b}=F(b-0)-F(a)$
    - $P{a<=X<b}=F(b-0)-F(a-0)$
    - $P{a<X<=b}=F(b)-F(a)$
    - $P{a<=X<=b}=F(b)-F(a-0)$
  ]
  section[常见的两类随机变量------离散型随机变量与连续型随机变量]
  subsec[离散型随机变量及其概率分布]
  [
    如果随机变量$X$只可能取有限个或可列无限个值$x_1,x_2,dots,$则称$X$为*离散型随机变量*，称$ P{X=x_i}=p_i,i=1,2,dots $为$X$的*分布列、分布律或概率分布*，记为$X tilde p_i$,概率分布常用表格或矩阵形式表示

    数列${p_i}$是离散型随机变量的概率分布的充要条件是：$p_i>=0(i=1,2,dots)$且$limits(Sigma)_(i)p_i=1$

    设离散型随机变量$X$的的概率分布为$P{X=x_i}=p_i$,则$X$的分布函数$ F(x)=P{X<=x}=limits(Sigma)_(x_i<=x)P{X=x_i} $$ P{X=x_i}=P{X<=x_i}-P{X<x_i}=F(x_i)-F(x_i-0) $

    且对实数轴上任一集合$B$,有$ P{x in B}=limits(Sigma)_(x_i in B)p_i $$ P{a<X<=b}=P{X<=b}-P{X<=a}=F(b)-F(a) $
  ]
  subsec[连续型随机变量及其概率密度]
  [
    若随机变量$X$的分布函数可以表示为$ F(x)=integral_(- oo)^x f(t)dd(t) $其中$f(x)$是非负可积函数，则称$X$为*连续型随机变量*，称$f(x)$为$X$的*概率密度函数*，记为$X tilde f(x)$

    $f(x)$为某一随机变量$X$的的概率密度的充要条件是：$f(x)>=0$,且$integral_(-oo)^(+oo)f(x)dd(x)=1$

    设$X$为连续型随机变量$X tilde f(x)$,则对任意实数$c$,有$P{X=c}=0$,对实数轴上任一集合$B$,有$ P{X in B}=integral_B f(x)dd(x) $
    对任意实数$a,b$,有$ P{a<X<=b}=integral_a^b f(x)dd(x)=F(b)-F(a) $
  ]
  section[常见的随机变量分布类型]
  subsec[离散型]
  [
    + $0-1$分布$B(1,p)(B e r-E_1)$

      $X tilde mat(1, 0; p, 1-p),$即$P{X=1}=p,P{X=0}=1-p$,则称$X$服从参数$p$的$0-1$分布，记为$X tilde B(1,p)$
    + 二项分布$B(n,p)(B e r-E_n)$

      $X$的概率分布为$P{X=k}=C_n^k p^k (1-p)^(n-k)(k=0,1,dots,n; 0<p<1)$称$X$服从参数$(n,p)$的二项分布，记为$X tilde B(n,p)$
    + 泊松分布$P(lambda)$

      $X$的概率分布为$ P{X=k}=lambda^k/k! e^(-lambda)(k=0,1,dots;lambda>0) $则称$X$服从参数为$lambda$的泊松分布，记为$X tilde P(lambda)$，$lambda$为期望
    + 几何分布$G(p)(B e r-E_(oo))$

      $X$的概率分布为$ P{X=k}=p(1-p)^(k-1)(k=1,2,dots;0<p<1) $则称$X$服从参数为$p$的几何分布，记为$X tilde G(p)$
    + 超几何分布$H(N,M,n)$

      $X$的概率分布为$P{X=k}=(C_M^k C_(N-M)^(n-k))/C_N^n (max{0,n-N+M}<=k<=min{M,n}; M,N,$$n"为""正""整" "数" "且"M<=N,n<=N,k"为正整数")$则称$X$服从参数为$(N,M,n)$的超几何分布，记为$X tilde H(N,M,n)$
  ]
  subsec[连续型]
  [
    + 均匀分布$U(a,b)$

      $X$的概率密度和分布函数分别为$ f(x)=cases(1/(b-a) "    "(a<=x<=b; a<b), 0 "       其他"),F(x)=cases(0"     if  "x<a, (x-a)/(b-a)"  if  "a<=x<b, 1"     if  "x>=b) $则称$X$服从参数为$(a,b)$的均匀分布，记为$X tilde U(a,b)$
    + 指数分布$E(lambda)$

      $X$的概率密度和分布函数分别为 $ f(x)=cases(lambda e^(-lambda x)"   "(x>=0;lambda>0), 0"         其他") F(x)=cases(1-e^(-lambda x)"    if    "x>=0, 0"              if    "x<0) $则称$X$服从参数为$lambda$的指数分布，记为$X tilde E(lambda)$
    + 正态分布$N(mu,sigma^2)$

      $X$的概率密度为$ f(x)=1/(sigma sqrt(2pi)) e^(-(x-mu)^2/(2sigma^2))(sigma>0) $则称$X$服从参数为$(mu,sigma^2)$的正态分布，记为$X tilde N(mu,sigma^2)$

      $mu=0,sigma=1$时的正态分布为*标准正态分布*，概率密度为$phi(x)=1/sqrt(2 pi) e^(-t^2/2)$,分布函数为$Phi(x)=1/sqrt(2 pi)integral_(-oo)^x e^(-t^2/2)dd(t)$,显然$phi(x)$为偶函数，$Phi(-x)=1-Phi(x),Phi(0)=1/2$

      若$X tilde N(0,1),P{X>mu_alpha}=alpha$,则称$mu_alpha$为标准正态分布的*上侧$alpha$分位数*

      若$X tilde N(mu,sigma^2)$,则$ F(x)=P{X<x}=Phi((x-mu)/sigma) $$ F(mu-x)+F(mu+x)=1 $$ P{a<X<b}=Phi((b-mu)/sigma)-Phi((a-mu)/sigma) $$ a X+b tilde N(a mu +b,a^2sigma^2)(a eq.not 0) $
  ]
  section[一维随机变量函数的分布]
  subsec[概念]
  [
    设$X$为随机变量，函数$y=g(x)$,则以随机变量$X$作为自变量的函数$Y=g(X)$也是随机变量，称为*随机变量$X$*的函数
  ]
  subsec[随机变量函数的分布]
  [

  ]
}

#一维随机变量及其分布

