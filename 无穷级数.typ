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


#outline()
#pagebreak()

#let 无穷级数 = {
  section[常数项级数]
  [
    #subsec[概念及敛散性]
    给定一个无穷数列$u_1,u_2,dots,u_n,dots,$将其各项用加号连接起来得到记号$limits(Sigma)_(n=1)^(oo)u_n$,即$ limits(Sigma)_(n=1)^(oo)u_n=u_1+u_2+dots+u_n+dots $叫做无穷级数，其中$u_n$叫作该级数的通项，若$u_n$为常数，则称$limits(Sigma)_(n=1)^(oo)u_n$为常数项无穷级数，简称常数项级数.

    若部分和数列${S_n}$,$limits(lim)_(n arrow oo)S_n=S$,则称无穷级数收敛，若$limits(lim)_(n arrow oo)S_n$不存在，则称无穷级数发散

    #subsec[性质]
    + 若级数$limits(Sigma)_(n=1)^(oo)u_n,limits(Sigma)_(n=1)^(oo)u_v$均收敛，有$limits(Sigma)_(n=1)^(oo)(a u_n plus.minus b v_n)$也收敛，且$ limits(Sigma)_(n=1)^(oo)(a u_n plus.minus b v_n)=a limits(Sigma)_(n=1)^(oo)u_n plus.minus b limits(Sigma)_(n=1)^(oo)v_n $
    + 改变级数任意有限项，不会改变级数敛散性。
    + 收敛级数的任意项加括号后所得的新级数仍收敛，且其和不变
    + 若$limits(Sigma)_(n=1)^(oo)u_n$收敛，则$limits(lim)_(n arrow oo)u_n=0$
  ]
  section[级数敛散性判别]
  [
    #subsec[正项级数及其敛散性判别]
    若通项$u_n>=0,n=0,1,dots,$则称$limits(Sigma)_(n=1)^(oo)u_n$为正项级数
    + 收敛原则\
      正向级数$limits(Sigma)_(n=1)^(oo)u_n$收敛的充要条件是它的部分和数列$S_n$有界
    + 比较判别\
      给出两个正项级数$limits(Sigma)_(n=1)^(oo)u_n,limits(Sigma)_(n=1)^(oo)v_n$,如果从某项起有$u_n<=v_n$则
      #v(0.5em)
      #set enum(spacing: 1.5em)
      + 若$limits(Sigma)_(n=1)^(oo)v_n$收敛，则$limits(Sigma)_(n=1)^(oo)u_n$也收敛
      + 若$limits(Sigma)_(n=1)^(oo)u_n$发散，则$limits(Sigma)_(n=1)^(oo)v_n$也发散
    + $p$级数\
      $ limits(Sigma)_(n=1)^(oo) 1 / n^p $\
      + $p>1$收敛
      + $p<=1$发散
    + 比较判别法的极限形式\
      给出两个正项级数$limits(Sigma)_(n=1)^(oo)u_n,limits(Sigma)_(n=1)^(oo)v_n,v_n eq.not 0(n=1,2,dots)$且$limits(lim)_(n -> oo)u_n / v_n=A$
      + 若$A=0$,则$limits(Sigma)_(n=1)^(oo)v_n$收敛时，$limits(Sigma)_(n=1)^(oo)u_n$也收敛\ #h(0.5em)
      + 若$A=+oo$,则$limits(Sigma)_(n=1)^(oo)v_n$发散时，$limits(Sigma)_(n=1)^(oo)u_n$也发散
      + 若$0<A<+oo$,则$limits(Sigma)_(n=1)^(oo)u_n$的敛散性与$limits(Sigma)_(n=1)^(oo)v_n$相同
    + 比值判别（达朗贝尔）判别\ #v(0.125em)
      给出正项级数$limits(Sigma)_(n=1)^(oo)u_n$,如果$limits(lim)_(n -> oo)u_(n+1) / u_n=A$\ #v(0.5em)
      + $A<1$收敛
      + $A>1$发散
      + $A=1$不确定
    + 根判别(柯西判别法)\ #v(0.125em)
      给出正项级数$limits(Sigma)_(n=1)^(oo)u_n$,如果$limits(lim)_(n -> oo)(u_n)^(1 / n)=A$\ #v(0.5em)
      + $A<1$收敛
      + $A>1$发散
      + $A=1$不确定
    + 积分判别法\
    #set par(leading: 1.5em)
    设$limits(Sigma)_(n=1)^(oo)u_n$为正项级数，若存在$[1,+oo)$上单调减少的非负连续函数$f(x)$,使得$limits(Sigma)_(n=1)^(oo)u_n=f(n)$,则级数$limits(Sigma)_(n=1)^(oo)u_n$与反常积分$integral_1^(oo)f(x)dd(x)$的敛散性相同

    #subsec[交错级数及其敛散性判别]
    若级数各项正负相间出现，称这样的级数为交错级数\

    莱布尼茨判别法：给出交错级数$limits(Sigma)_(n=1)^(oo)(-1)^(n-1)u_n,u_n>0,n=1,2,dots,$若${u_n}$单调不增且$limits(lim)_(n -> oo)u_n=0$,则级数收敛

    #subsec[任意项级数及其敛散性判别（绝对值判别法）]
    若级数各项可正可负可零，称这样的级数为任意项级数

    给任意项级数每一项加上绝对值，写成$limits(Sigma)_(n=1)^(oo)abs(u_n)$,叫作原级数的绝对值级数。
    + 绝对收敛\
      如果$limits(Sigma)_(n=1)^(oo)abs(u_n)$收敛，则称$limits(Sigma)_(n=1)^(oo)u_n$绝对收敛
    + 条件收敛\
      如果$limits(Sigma)_(n=1)^(oo)abs(u_n)$发散，但$limits(Sigma)_(n=1)^(oo)u_n$收敛，则称$limits(Sigma)_(n=1)^(oo)u_n$条件收敛
  ]
  section[幂级数与收敛域]
  [
    #subsec[概念]
    + 函数项级数\
      设$u_n (x)$是$x$的函数，$n=1,2,dots,$级数$limits(Sigma)_(n=1)^(oo)u_n (x)$称为函数项级数
    + 幂级数\
      设$u_n (x)=a_n x^n$或$u_n (x)=a_n (x-x_0)^n$,其中$a_n$为常数，$n=0,1,dots,$级数$limits(Sigma)_(n=0)^(oo)a_n x^n$称为幂级数
    + 收敛点和发散点\
      给定点$x_0 in I$,有$limits(Sigma)_(n=1)^(oo)u_n (x_0)$,则称点$x_0$为该函数项级数的收敛点，若函数项级数在该点发散，则称该点为发散点。
    + 收敛域\
      函数项级数的所有收敛点的集合称为它的收敛域。

    #subsec[阿贝尔定理]
    当幂级数$limits(Sigma)_(n=1)^(oo)u_n (x)$在点$x_1$收敛时，对于满足$abs(x)<abs(x_1)$的一切$x$,幂级数绝对收敛。当幂级数在点$x_2$发散时，对于满足$abs(x)>abs(x_2)$的一切$x$,幂级数绝对发散。

    #subsec[收敛半径]
    若$R>=0$满足条件：当$abs(x)<R$时，幂级数$limits(Sigma)_(n=1)^(oo)u_n (x)$绝对收敛；当$abs(x)>R$时，幂级数$limits(Sigma)_(n=1)^(oo)u_n (x)$发散，则称$R$为该幂级数的收敛半径。区间$[-R,R]$称为该幂级数的收敛区间。

    若幂级数$limits(Sigma)_(n=1)^(oo)a_n (x-x_0)^n$在点$x_1$处条件收敛，则$R=abs(x-x_0)$

    #subsec[收敛域的求法]
    + 对于不缺项幂级数$limits(Sigma)_(n=0)^(oo)a_n x^n$\ #h(0.125em)
      + 收敛半径求法\
        若$limits(lim)_(n arrow oo)abs(a_(n+1) / (a_n))=rho,$或$limits(lim)_(n arrow oo)root(n, abs(a_n))=rho$,则收敛半径$ R=cases(1 / rho","r eq.not 0","rho eq.not +oo, +oo","rho=0, 0","rho=+oo) $
      + 收敛区间与收敛域\
        区间$(-R,R)$为幂级数$limits(Sigma)_(n=0)^(oo)a_n x^n$的收敛区间,单独考察端点$-R,R$处的敛散性，可确定收敛域为$(-R,R),[-R,R),(-R,R],[-R,R]$
    + 缺项级数和一般函数项级数
      + 加绝对值，变为$limits(Sigma)abs(u_n (x))$
      + 用正项级数的比值（或根值）判别法\
        令$limits(lim)_(n -> oo)abs(u_(n+1)(x)) / abs(u_n (x))($或$limits(lim)_(n -> oo)root(n, abs(u_n (x))))<1$求出收敛区间$(a,b)$
      + 单独讨论$x=a,b$时的敛散性，确定收敛域。
  ]
  section[幂级数求和函数]
  [
    #subsec[概念]
    在收敛域上，记$S(x)=limits(Sigma)_(n=1)^(oo)u_n (x)$,并称$S(x)$为$limits(Sigma)_(n=1)^(oo)u_n (x)$的求和函数
    #subsec[运算法则]
    若幂级数$limits(Sigma)_(n=0)^(oo)a_n x^n$与$limits(Sigma)_(n=0)^(oo)b_n x^n$的收敛半径分别为$R_a,R_b (R_a eq.not R_b)$,则有\ #v(0.125em)
    + $k limits(Sigma)_(n=0)^(oo)a_n x^n=limits(Sigma)_(n=0)^(oo)k a_n x^n,abs(x)<R_a,k$为常数。#v(0.5em)
    + $limits(Sigma)_(n=0)^(oo)(a_n plus.minus b_n)x^n=limits(Sigma)_(n=0)^(oo)a_n x^n plus.minus limits(Sigma)_(n=0)^(oo)b_n x^n,abs(x)<min(R_a, R_b)$
    + $limits(Sigma)_(n=0)^(oo)a_n x^n dot limits(Sigma)_(n=0)^(oo)b_n x^n=limits(Sigma)_(n=0)^(oo)(limits(Sigma)_(i=0)^(n)a_i b_(n-i))x^n$收敛半径$R=min{R_a,R_b}$(柯西划线法)

    #subsec[恒等变形方式]
    + 通项，下标一起变\
      $ limits(Sigma)_(n=k)^(oo)a_n x^n=limits(Sigma)_(n=k+l)^(oo)a_(n-l) x^(n-l) $$l$为整数
    + 只变下标，不变通项\
      $
        limits(Sigma)_(n=k)^(oo)a_n x^n=a_k x^k+a_(k+1)x^(k+1)+dots+a_(k+l-1)x^(k+l-1)+limits(Sigma)_(n=k+l)^(oo)a_n x^n
      $
    + 只变通项，不变下标\
      $ limits(Sigma)_(n=k)^(oo)a_n x^n=x^l limits(Sigma)_(n=k)^(oo)a_n x^(n-l) $

    #subsec[性质]
    + 幂级数的和函数$S(x)$在其收敛于上连续
    + 幂级数的和函数在其收敛域上可积，且有逐项积分公式$ integral_0^x S(t)dd(t)=integral_0^x (limits(Sigma)_(n=0)^(oo)a_n t^n)dd(t)=limits(Sigma)_(n=0)^(oo)a_n integral_0^x t^n dd(t)=limits(Sigma)_(n=0)^(oo)a_n / (n+1) x^(n+1) $

      逐项积分后得到的幂级数与原级数收敛半径相同，收敛域可能扩大
    + 幂级数的和函数在其收敛域上可导，且有逐项求导公式$ S'(x)=(limits(Sigma)_(n=0)^(oo)a_n x^n)'= limits(Sigma)_(n=0)^(oo)(a_n x^n)'= limits(Sigma)_(n=0)^(oo)n a_n x^(n-1) $
      逐项微分后得到的幂级数与原级数收敛半径相同，收敛域可能缩小

    #subsec[重要展开式]
    + $
        e^x=limits(Sigma)_(n=0)^(oo)x^n / n! = 1+x+x^2 / 2!+dots+x^n / n! + dots ,
        -oo<x<oo
      $
    + $ 1 / (1+x)=limits(Sigma)_(n=0)^(oo)(-1)^n x^n,-1<x<1 $
    + $ 1 / (1-x)=limits(Sigma)_(n=0)^(oo)x^n,-1<x<1 $
    + $ ln(1+x)=limits(Sigma)_(n=1)^(oo)(-1)^(n-1) x^n / n,-1<x<1 $
    + $ sin x=limits(Sigma)_(n=0)^(oo)(-1)^n x^(2n+1) / (2n+1)!,-oo<x<oo $
    + $ cos x=limits(Sigma)_(n=0)^(oo)(-1)^n x^(2n) / (2n)!,-oo<x<oo $
    + $
        (1+x)^alpha=1+alpha x+ alpha(alpha-1) / 2! x^2+dots+(alpha(alpha-1)dots(alpha-n+1)) / n! x^n+dots,cases(x in (-1,1) "  if  "alpha<=1, x in (-1,1]"   if "-1<alpha<0, x in [-1,1]"   if  "alpha>0 且 alpha in.not Nu_+, x in (-oo,oo)"   if   "alpha in Nu_+)
      $
    + $ (e^x+e^(-x)) / 2=limits(Sigma)_(n=0)^(oo)x^(2n) / ((2n!)) $
    + $ (e^x-e^(-x)) / 2=limits(Sigma)_(n=0)^(oo)(-1)^n dot x^(2n+1) / ((2n+1)!),-oo<x<oo $
  ]

  section[函数展开为幂级数]
  [
    #subsec[概念]
    + 泰勒级数
    + 麦克劳林级数
    #subsec[求法]
    + 直接展开
    + 利用已知幂级数展开，通过变量替换、四则运算、逐项求导、逐项积分和待定系数等方法求得
  ]
  section[傅里叶级数]
  {
    subsec[周期为$2l$的傅里叶级数]
    [
      设函数是周期为$2l$的周期函数，且在$[-l,l]$上可积，则称$ a_n=1 / l integral_(-l)^l f(x)cos (n pi) / l x dd(x)(n=0,1,2,dots), $$
        b_n=1 / l integral_(-l)^l f(x)sin (n pi) / l x dd(x)(n=0,1,2,dots)
      $为$f(x)$的以$2l$为周期的傅里叶系数，称级数$ a_0 / 2+limits(Sigma)_(n=1)^(oo)(a_n cos (n pi) / l x+b_n sin (n pi) / l x ) $为$f(x)$的以$2l$为周期的傅里叶级数，记作$ f(x) \~a_0 / 2+limits(Sigma)_(n=1)^(oo)(a_n cos (n pi) / l x+b_n sin (n pi) / l x )=S(x) $
    ]
    subsec[迪利克雷收敛定理]
    [
      设$f(x)$是以$2l$为周期的可积函数，如果在[-l,l]上满足：
      + 连续或只有有限个第一类间断点；
      + 至多只有有限个极值点
      则$f(x)$的傅里叶级数在$[-l,l]$上处处收敛，记其和函数为$S(x)$,则$ S(x)=cases(f(x) ","x"为连续点", (f(x-0)+f(x+0)) / 2","x"为间断点", (f(-l+0)+f(l-0)) / 2","x= plus.minus l) $
    ]
    subsec[正弦级数和余弦级数]
    [
      + 当$f(x)$为奇函数时，其展开式是正弦函数$ f(x)\~limits(Sigma)_(n=1)^(oo)b_n sin (n pi) / l x ,b_n=2 / l integral_(0)^(l)f(x)sin (n pi) / l x dd(x),n=1,2,dots $
      + 当$f(x)$为偶函数时，其展开式是余弦函数$ f(x)\~a_0 / 2+limits(Sigma)_(n=1)^(oo)a_n cos (n pi) / l x ,a_n=2 / l integral_(0)^(l)f(x)cos (n pi) / l x dd(x),n=1,2,dots $
    ]
    subsec[只在$[0,l]$上有定义的函数的正弦级数和余弦级数展开]
    [
      若$f(x)$是定义在$[0,l]$上的函数，首先用周期延拓，使其扩展为定义在$(-oo,+oo)$上的周期函数$F(x)$，得到$F(x)$的傅里叶展开式后，再将其自变量限制在$[0,l]$上，得到$f(x)$的傅里叶级数展开式。
      + 周期奇延拓与正弦级数展开
        + 设$f(x)$是定义在$[0,l]$的函数，令$ F(x)=cases(f(x) "  if  "0<x<=l, -f(-x)"  if  "-l<=x<0, 0"  if  "x=0) $
          再令$F(x)$为以$2l$为周期的周期函数
        + 正弦级数展开
          $ f(x)\~ limits(Sigma)_(n=1)^(oo)b_n sin (n pi) / l x ,x in [0,l] $ $
            b_n=2 / l integral_(0)^(l)f(x)sin (n pi) / l x dd(x),n=1,2,dots
          $
      + 周期偶延拓与余弦级数展开
        + 设$f(x)$是定义在$[0,l]$的函数，令$ F(x)=cases(f(x) "  if  "0<=x<=l, f(-x)"  if  "-l<=x<0,) $
        再令$F(x)$为以$2l$为周期的周期函数
        + 余弦级数展开
          $ f(x)\~ a_0 / 2+limits(Sigma)_(n=1)^(oo)a_n cos (n pi) / l x ,x in[0,l] $ $
            a_n=2 / l integral_(0)^(l)f(x)cos (n pi) / l x dd(x),n=1,2,dots
          $
    ]
  }
}


#无穷级数
