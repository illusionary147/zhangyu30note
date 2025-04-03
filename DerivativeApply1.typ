#import "utils.typ" : sec , subsec

#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true),spacing:1.2em)
#set page(margin:(x:40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}

#outline()
#pagebreak()

#sec[极值]
对于函数$f(x)$，若存在点$x_0$的某个邻域，使得在该邻域内任意一点$x$,均有$ f(x)<=f(x_0)("或"f(x)>=f(x_0))) $
成立，则称$x_0$为$f(x)$的极大值（或极小值）点，$f(x_0)$为函数$f(x)$的极大值（或极小值）。#parbreak()
断点也可以是极值点。


#sec[单调性]
+ 一阶可导点是极值点的必要条件
  极值点可以是驻点或不可导点
+ 第一充分条件：\
  设$f(x)$在$x=x_0$处连续，且在$x_0$某去心邻域$circle(U)(x_0,delta)(delta>0)$内可导
  + 若$x in (x_0-delta,x_0)时，f'(x)<0,而 x in (x_0,x_0+delta)时,f'(x)>0,则 f(x)$在$x=x_0$处取极小值
  + 若$x in (x_0-delta,x_0)时，f'(x)>0,而 x in (x_0,x_0+delta)时,f'(x)<0,则 f(x)$在$x=x_0$处取极大值
  + 若$x in (x_0-delta,x_0)"时和" x in (x_0,x_0+delta)时"不变号",则$$x=x_0$不是极值点。
+ 第二充分条件：\
  设$f(x)在 x=x_0$处二阶可导，且$f'(x_0)=0,f''(x_0) eq.not 0$.
  + 若$f''(x_0)>0,则 f(x)在 x_0$取极小值
  + 若$f''(x_0)<0,则 f(x)在 x_0$取极大值

+ 第三充分条件：\
  设$f(x)在 x=x_0处 n$阶可导，且$f^((m))(x)=0(m=1,2,dots,n-1),f^((n))(x) eq.not 0,(n >= 2)$则：
  + 当$n$为偶数且$f^((n))(x_0)<0$,$f(x)$在$x_0$处取极大值
  + 当$n$为偶数且$f^((n))(x_0)>0$,$f(x)$在$x_0$处取极小值


#sec[凹凸性]
#subsec[定义一]
设函数$f(x)$在区间$I$连续，若对$I$任意不同两点$x_1,x_2$恒有$ f((x_1+x_2)/2)<(f(x_1)+f(x_2))/2, $
则称$y=f(x)$在$I$上的图形是凹的（或凹弧），若恒有$ f((x_1+x_2)/2)>(f(x_1)+f(x_2))/2, $则称$y=f(x)$在$I$上的图形是凸的（或凸弧）。更一般地可以写为$ f(lambda_1 x_1+lambda_2 x_2 )<lambda_1f(x_1)+lambda_2f(x_2), $其中$0<lambda_1<1,0<lambda_2<1,lambda_1+lambda_2=1$.(凹弧)

#subsec[定义二]
设函数$f(x)$在$[a,b]$内连续，在$(a,b)$内可导，若对$(a,b)$内任意$x 及 x_0(x eq.not x_0)$均有$ f(x_0)+f'(x_0)(x-x_0)<f(x), $则称$f(x) 在 [a,b]$的图形是凹的。


#sec[拐点]
连续曲线的凹弧与凸弧的分界点成为该曲线的拐点
+ 间断点不是拐点
+ 间断点处可以不可导
+ 间断点是点而拐点是横坐标


#sec[凹凸性判别]
设函数$f(x) 在 I$上二阶可导。
+ 若在$I 上 f''(x)>0$,则$f(x) 在 I$上的图形是凹的。
+ 若在$I 上 f''(x)<0$,则$f(x) 在 I$上的图形是凸的。


#sec[拐点判别]
设$f''(x_0)$存在，且点$(x_0,f(x_0))$是拐点，则$f''(x_0)=0$

#subsec[第一充分条件：]
设$f(x) "在点"x=x_0$处连续，在点$x=x_0$的某去心邻域$circle(U)(x_0,delta)$内二阶导数存在，且在该点左、右邻域内$f''(x)$变号，则点$(x_0,f(x_0))$是曲线的拐点。

#subsec[第二充分条件：]
设$f(x)在 x=x_0$的某邻域内三阶可导，且$f''(x_0)=0,f'''(x_0) eq.not 0，$则点$(x_0,f(x_0))$是曲线的拐点。

#subsec[第三充分条件:]
设$f(x)在 x_0$处$n$阶可导,且$f^((m))(x_0)=0(m=2,3,dots n-1),f^((n))(x_0) eq.not 0(n >=3),$则当$n$为奇数时点$(x_0,f(x_0))$为曲线的拐点。


#sec[极值点与拐点的重要结论]
+ 曲线的可导点不可同时为极值点和拐点，不可导点可同时为极值点和拐点。
+ 设多项式函数$f(x)=(x-a)^n g(x)(n>1)$,且$g(a) eq.not 0$，则当$n$是偶数时，$x=a$是$f(x)$的极值点，当$n$是奇数时，$x=a$是$f(x)$的拐点。
+ 设多项式函数$f(x)=(x-a_1)^(n_1)(x-a_2)^(n_2)dots (x-a_k)^(n_k)$,其中$n_i$为正整数，$a_i$是实数且两两不等，$i=1,2,dots,k$\
  记$k_i$为$n_i=1$的个数，$k_2$为$n_i$为偶数的个数，$k_3$为$n_i>1$且为奇数的个数，则$f(x)$的极值点个数为$k_1+2k_2+k_3-1$,拐点的个数为$k_1+2k_2+3k_3-2$


#sec[渐近线]

#subsec[铅直渐近线]
若$limits(lim)_(x arrow x_0^+)f(x)=oo(或 limits(lim)_(x arrow x_0^-)f(x)=oo)$,则$x=x_0$是一条铅直渐近线。$x_0$可以是无定义点，或定义域端点，或分段函数分段点。

#subsec[水平渐近线]
若$limits(lim)_(x arrow +oo)f(x)=y_1,则 y=y_1$是一条水平渐近线，若$limits(lim)_(x arrow -oo)f(x)=y_2,则 y=y_2$是一条水平渐近线；若$limits(lim)_(x arrow +oo)f(x)=limits(lim)_(x arrow - oo)f(x)=y_0,则 y=y_0$是一条水平渐近线.

#subsec[斜渐近线]
+ 若$limits(lim)_(x arrow +oo)f(x)/x=a_1(a_1 eq.not 0),limits(lim)_(x arrow +oo)[f(x)-a_1x]=b_1,则 y=a_1x+b_1$是曲线$y=f(x)$的一条斜渐近线；
+ 若$limits(lim)_(x arrow -oo)f(x)/x=a_2(a_2 eq.not 0),limits(lim)_(x arrow +oo)[f(x)-a_2x]=b_2,则 y=a_2x+b_2$是曲线$y=f(x)$的一条斜渐近线；
+ 若$limits(lim)_(x arrow -oo)f(x)/x=limits(lim)_(x arrow -oo)f(x)/x=a(a eq.not 0),limits(lim)_(x arrow +oo)[f(x)-a x]=limits(lim)_(x arrow -oo)[f(x)-a x]=b,则 y=a x+b$是曲线$y=f(x)$的一条斜渐近线；


#sec[曲率与曲率半径]
设$y(x)$二阶可导,则曲线$y=y(x)$在点$(x,y(x))$处的曲率半径为：$ k=abs(y'')/[1+(y')^2]^(3/2), $曲率半径为$ R=1/k (y eq.not 0) $