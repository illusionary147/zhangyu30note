#import "utils.typ": section, subsec, my_init
//#my_init()
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

#let 微分方程 = {
  section[概念]
  subsec[微分方程及其阶]
  [
    表示含有未知函数及其导数（或微分）与自变量之间关系的方程称为微分方程。一般写成$ F[x,y,y',y'',dots y^((n))]=f[x,y,y',y'',dots,y^((n-1))] $
    微分方程中未知函数的最高阶导数的阶数称为微分方程的阶。
  ]
  subsec[常微分方程]
  [
    未知函数是一元函数的微分方程称为常微分方程。
  ]
  subsec[线性微分方程]
  [
    形如$a_n (x)y^((n))+a_(n-1) (x)y^((n-1))+dots+a_1 (x)y'+a_0y=f(x)$的微分方程称为$n$阶线性微分方程，其中$a_k (x)(k=0,1,2,dots,n)$都是自变量$x$的函数，$a_k (x) eq.triple.not 0.$当$a_k (x)$都是常数时，又称为$n$阶常系数线性微分方程，若$f(x)eq.triple 0$，则称为$n$齐次线性微分方程，否则称为$n$阶非齐次线性微分方程。
  ]
  subsec[微分方程的解]
  [
    若将函数带入微分方程，使之成为恒等式，则称该函数为微分方程的解。微分方程的图形称为积分曲线。
  ]
  subsec[微分方程的通解]
  [
    若微分方程的解中含有的独立常数的个数等于微分方程的阶数，则称该解为微分方程的通解。
  ]
  subsec[初始条件与特解]
  [
    确定通解中常数的条件就是初始条件，确定了通解中的常数后，解就成了特解。
  ]

  section[一阶微分方程的求解]
  [
    #subsec[分离变量]
    + 可直接分离
    + 换元后可分离

    #subsec[齐次型微分方程]
    形如$(dif y) / (dif x)=phi(y / x)$的方程叫做齐次型微分方程，其解法为令$u=y / x$,则$y=u x arrow.double (dif y) / (dif x)=u+x (dif y) / (dif x)$
    于是原方程变为$u+x (dif y) / (dif x)=phi(u)$，即$(dif u) / (phi(u)-u)=(dif x) / x$。

    #subsec[一阶线性微分方程]
    形如$y'+p(x)y=q(x)$的方程称为一阶线性微分方程，其中$p(x),q(x)$是已知的连续函数，其通解为$ y=e^(- integral p(x)dif x)[integral e^(integral p(x)dif x)dot q(x)dif x+C] $

    #subsec[伯努利方程]
    形如$ (dif y) / (dif x)+p(x)y=q(x)y^n,(n eq.not 0,1) $的方程叫做伯努利方程，其中$p(x),q(x)$是已知的连续函数，$n$是常数。其解法为
    + 先变形为$y^(-n)dot (dif y) / (dif x)+p(x)y^(1-n)=q(x)$
    + 令$z=y^(1-n),$得$(dif z) / (dif x)=(1-n)y^(-n)(dif y) / (dif x)$,则$1 / (1-n) (dif z) / (dif x)+p(x)z=q(x)$
    + 解一阶线性微分方程

    #subsec[二阶可降阶微分方程]
    + $y''=f(x,y')$型（方程中不显含未知函数$y'$）
      + 令$y'=p,y''=p',$则原方程变为一阶方程$(dif p) / (dif x )=f(x,p)$
      + 若求得通解$p=phi(x, C_1),即 y'=phi(x, C_1),$则原方程通解为$y=integral phi(x, C_1)dif x+C_2$
    + $y''=f(y,y')$型（方程中不显含自变量$x'$）
      + 令$y'=p,y''=(dif p) / (dif x)=(dif p) / (dif y) dot (dif y) / (dif x)=p (dif p) / (dif x)$则原方程变为一阶方程$p (dif p) / (dif y )=f(y,p)$
      + 若求得通解$p=phi(y, C_1)$,则由$p=(dif y) / (dif x)$可得$(dif y) / (dif x)=phi(y, C_1)$,分离变量得$(dif y) / phi(y, C_1)=dif x$
      + 两边积分得$integral (dif y) / phi(y, C_1)=x+C_2$
    + $y''=f(y')$型，按1方法。

    #subsec[全微分方程]
    若函数$P(x,y),Q(x,y)$在单连通区域$D$上具有一阶连续偏导数，且在$D$内满足$ pdv(Q, x)=pdv(P, y), $则$P dif x+ Q dif y$是某二元函数$u(x,y)$的全微分。若一阶微分方程写成$ P(x,y)dif x+Q(x,y)dif y=0 $的形式时，等式左端表达式是$u(x,y)$的全微分，则称上式为全微分方程。
  ]
  section[高阶线性微分方程的求解]
  [
    #subsec[二阶常系数齐次微分方程]
    + 概念\
      方程$y''+p y'+q y=0$称为二阶常系数齐次线性微分方程，其中$p,q$是常数。
    + 解的结构\
      若$y_1(x),y_2(x)$是$y''+p y'+q y=0$的两个解，且$(y_1(x)) / (y_2(x)) eq.not C$，则$y_1(x),y_2(x)$线性无关，且$y_1(x),y_2(x)$的线性组合$y=C_1 y_1(x)+C_2 y_2(x)$是$y''+p y'+q y=0$的解。\
    + 通解\
      对于$y'' + p y'+q y=0$,其对应的特征方程为$r^2 + p r + q=0$.
      + 若$p^2-4 q>0,$设$r_1,r_2$是特征方程的两个不等实根，即$r_1 eq.not r_2,$可得通解为：$ y=C_1 e^(r_1 x)+C_2 e^(r_2 x) $
      + 若$p^2-4 q=0,$设$r_1=r_2=r$是特征方程的重根，可得通解为：$ y=(C_1+C_2 x)e^(r x) $
      + 若$p^2-4 q<0,$设$r_1,r_2$是特征方程的两个共轭复根，即$r_1=alpha+i beta,r_2=alpha-i beta,$可得通解为：$ y=e^(alpha x)(C_1 cos beta x+C_2 sin beta x) $

    #subsec[二阶常系数非齐次线性微分方程]
    + 概念\
      方程$y''+p y'+q y=f(x),(f(x)eq.triple.not 0)$称为二阶常系数非齐次线性微分方程，其中$p,q$是常数，$f(x)$是已知的连续函数,称为自由项。
    + 解的结构\

      + 若$y_1^*(x)$是$y''+p y'+q y=f_1(x)$的解，$y_2^*(x)$是$y''(x)+p y'+q y=f_2(x)$的解，则$y_1^*(x)+y_2^*(x)$是$y''+p y'+q y=f_1(x)+f_2(x)$的解。
      + 设$y_1^*(x),y_2^*(x)$都是$y''+p y'+q y=f(x)$的解，则$y_1^*(x)-y_2^*(x)$是对应齐次方程的的解
    + 特解的设定\
      设$P_n (x),P_m (x)$分别是$x 的 n,m$次多项式。
      + 当自由项$f(x)=P_n(x)e^(alpha x)$时，特解设为$y^*=e^(alpha x)Q_n (x)x^k$,其中
        $
          cases(
            e^(alpha x)"照抄",
            Q_n (x)"为"x 的 n"次多项式",
            k=cases(
              0","alpha "不是特征根",
              1","alpha "是特征根",
              2","alpha "是重特征根"
            )
          )
        $
      + 当自由项$f(x)=e^(alpha x)[P_m (x)cos beta x+P_n (x)sin beta x],$时，特解设为$ y^*=e^(alpha x)[Q_l^((1))(x)cos beta x+Q_l^((2))(x)sin beta x]x^k, $其中
      $
        cases(
          e^(alpha x)"照抄",
          l=max{m,n}","Q_l^((1))(x)","Q_l^((2))(x)"分别为"x"的两个不同的"l"次多项式",
          k=cases(
            0","alpha +beta i"不是特征根",
            1","alpha +beta i"是特征根",
          )
        )
      $
    + $D$算子求特解：

    #subsec[$n(n>2)$阶常系数微分方程]
    + 若$r$为单实根，写$C e^(r x)$
    + 若$r$为$k$重实根，写$ (C_1+C_2 x+dots+C_k x^(k-1))e^(r x) $
    + 若$r$为单复根$alpha+beta i$，写$ e^(alpha x)(C_1 cos beta x+C_2 sin beta x) $
    + 若$r$为二重复根$alpha+beta i$，写$ e^(alpha x)(C_1 cos beta x+C_2 sin beta x+C_3 x cos beta x+C_4 x sin beta x) $

    #subsec[能写成$x^2 y'' +p x y'+q y=f(x)$形式的微分方程（欧拉方程）]
    形如$x^2 y'' +p x y'+q y=f(x)$的微分方程称为欧拉方程。
    + 当$x>0$时，令$x=e^t$，则$t=ln x$，$(dif t) / (dif x)=1 / x$，于是$ (dif y) / (dif x)=(dif y) / (dif t)dot (dif t) / (dif x)=1 / x (dif y) / (dif t),dv(y, x, 2)=dif / (dif x) (1 / x dv(y, x))=-1 / x^2 dv(y, t)+1 / x dv(, x)(dv(y, t))=-1 / x^2dv(y, t)+1 / x^2 dv(y, t, 2) $
      则原方程化为$ dv(y, t, 2)+(p-1)dv(y, t)+q y=f(e^t) $
    + 当$x<0$时，令$x=- e^t$，同理可得
  ]
}
#微分方程


