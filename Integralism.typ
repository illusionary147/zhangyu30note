#import "utils.typ" : section, subsec

#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true),spacing: 1.2em)
#set page(margin:(x:40pt))
#set enum(indent: 3em,spacing: 1.2em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}

#outline()
#pagebreak()

#section[不定积分]
#subsec[微积分基本定理]
$ F(x)=integral_a^x f(t) mono(d)t $
$ F'(x)=f(x) $
$ integral_a^b f(x) mono(d)x =F(b)-F(a) $


#subsec[原函数存在定理]
+ 连续函数$f(x)$必有原函数
+ 含有第一类间断点和无穷间断点的函数$f(x)$在包含该间断点的区间内没有原函数


#section[定积分]
#subsec[定积分定义]
$ integral_a^b f(x)mono(d)x=lim_(n -> oo) sum_(i=1)^n f(a+(b-a)/n i)(b-a)/n  $或$ integral_a^b f(x)mono(d)x=lim_(n -> oo) sum_(i=1)^n f(a+(b-a)/n dot (2i-1)/2)(b-a)/n $
$a=0,b=1时,$取小矩形右端点函数值作为高：
$ integral_0^1 f(x)mono(d)x=lim_(n arrow oo) sum_ (i=1)^n f(i/n)1/n $取小矩形中点函数值为高时有：$ integral_0^1 f(x)mono(d)x=lim_(n arrow oo) sum_ (i=1)^n f((2i-1)/(2n))1/n $

#section[定积分存在定理]
#subsec[定积分存在充分条件]
+ 若$f(x)在[a,b]$连续，则$integral_a^b f(x)mono(d)x$存在
+ 若$f(x)在[a,b]$单调，则$integral_a^b f(x)mono(d)x$存在
+ 若$f(x)在[a,b]$有界且只有有限个间断点，则$integral_a^b f(x)mono(d)x$存在
+ 若$f(x)在[a,b]$有界且只有有限个第一类间断点，则$integral_a^b f(x)mono(d)x$存在

#subsec[定积分存在必要条件]
若$f(x)在[a,b]$可积，则$f(x)$在$[a,b]$有界

#subsec[定积分性质]
+ 假设$a<b$,则$integral_a^b mono(d)x=L$,$L$为区间$[a,b]$的长度。
+ 线性：设常数$k_1,k_2,则 integral_a^b [k_1f(x)+k_2g(x)]mono(d)x=k_1integral_a^b f(x)mono(d)x+k_2 integral_a^b g(x)mono(d)x$
+ 估值定理：设$M,m$分别为$f(x)$在$[a,b]$上的最大值和最小值，则$ m L<=integral_a^b f(x)mono(d)x<=M L $
+ 中值定理：若$f(x)$在$[a,b]$上连续，则至少存在一点$xi in [a,b]$使$ integral_a^b f(x)mono(d) x =f(xi)(b-a) $


#section[变限函数]
$ F(x)=integral_v(x)^u(x)f(t)mono(d)t $
$ F'(x)=f(u(x))u'(x)-f(v(x))v'(x) $

#subsec[变限函数性质]
+ 函数$f(x)在 I$上可积，则函数$F(x)=integral_a^x f(t)mono(d)t$在$I$上连续。
+ 函数$f(x)在 I$上连续，则函数$F(x)=integral_a^x f(t)mono(d)t$在$I$上可导，且$F'(x)=f(x)$
+ 若$x=x_0 in I 是 f(x)$唯一的跳跃间断点，则$F(x)=integral_a^x f(t)mono(d)x 在 x_0$处不可导，且$F'_-(x_0)=limits(lim)_(x arrow x_0^-)f(x),F'_+(x_0)=limits(lim)_(x arrow x_0^+)f(x)$\
  若$x=x_0 in I 是 f(x)$唯一的可去间断点，则$F(x)=integral_a^x f(t)mono(d)x 在 x_0$处可导，且$F'_-(x_0)=F'_+(x_0)=limits(lim)_(x arrow x_0)f(x) eq.not f(x_0)$ 


#section[反常积分]
#subsec[定义]
+ 无穷区间上的反常积分\
  设$F(x)是 f(x)在$相应区间上的一个原函数，
  + $ integral_a^(+oo)f(x)mono(d)x=limits(lim)_(x arrow +oo)F(x)-f(a) $\ 若上述极限存在则称反常积分收敛，否则称为发散
  + $ integral_(-oo)^b f(x)mono(d)x=F(b)-lim_(x arrow -oo)F(x) $\ 若上述极限存在则称反常积分收敛，否则称为发散
  + $ integral_(-oo)^(+oo)f(x)mono(d)x=integral_(-oo)^x_0 f(x)mono(d)x+integral_(x_0) ^(+oo)f(x)mono(d)x, $ \ 若两个反常积分都收敛，则称该反常积分收敛，否则称为发散.
+ 无界函数的反常积分\
  设$F(x)是 f(x)$在相应区间上的一个原函数，$x_0为 f(x)$的瑕点
  + 若$x=a$是唯一瑕点，则$ integral_a^b f(x)mono(d)x=F(b)-lim_(x arrow a^+)F(x) $\ 若上述极限存在则称反常积分收敛，否则称为发散
  + 若$x=c in (a,b)$是唯一瑕点则$ integral_a^b f(x)mono(d)x=integral_a^c f(x)mono(d)x+integral_c^b f(x)mono(d)x $\ 若上述极限存在则称反常积分收敛，否则称为发散                

#subsec[反常积分的敛散性判别]
+ 比较判别
+ 比较判别的极限形式