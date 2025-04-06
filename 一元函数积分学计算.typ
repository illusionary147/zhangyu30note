#import "utils.typ" : sec, subsec

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

//#set page(columns: 2)
#sec[基本积分公式]
+ $ integral x^k mono(d)x= 1/(k+1) x^(k+1)+C,k eq.not -1  $
+ $ integral e^x mono(d)x= e^x+C,integral a^x mono(d)x= a^x/(ln a)+C,a>0,a eq.not 1 $
+ $ integral 1/x mono(d)x=ln x +C $
+ $ integral sin x=-cos x +C;integral cos x=sin x +C $
  $ integral tan x mono(d) x = ln abs(cos x )+C;integral cot x mono(d)x=ln abs(sin x)+C $
  $ integral sec^2 x mono(d)x=tan x +C;integral csc^2 x=-cot x +C $
  $ integral sec x tan x mono(d)x=sec x +C;integral csc x cot x mono(d)x=-csc x +C $
  $ integral (mono(d)x)/(sin x)=integral csc x mono(d) x =ln(abs(csc x-cot x))+C $
  $ integral (mono(d)x)/(cos x)=integral sec x mono(d) x =ln(abs(sec x+tan x))+C $
+ $ integral 1/(a^2+x^2) mono(d)x=1/a arctan(x/a)+C,(a>0) $
+ $ integral 1/sqrt(a^2-x^2)mono(d)x=arcsin x/a+C ,(a>0) $
+ $ integral 1/sqrt(x^2+a^2)mono(d)x=ln abs(x+sqrt(x^2+a^2))+C $
+ $ integral 1/(x^2-a^2) mono(d)x=1/(2a) ln abs((x-a)/(x+a))+C,(a>0) $
+ $ integral sqrt(a^2-x^2) mono(d)x=a^2/2 arcsin x/a +x/2 sqrt(a^2-x^2)+C $
+ $ integral sin^2 x mono(d)x=x/2-(sin 2x)/4+C $
  $ integral cos^2 x mono(d)x=x/2+(sin 2x)/4+C $
  $ integral tan^2 x mono(d)x=tan x-x+C $
  $ integral cot^2 x mono(d)x=-cot x-x+C $

#sec[不定积分积分法]
#subsec[凑微分]
$ integral f[g(x)]g'(x)mono(d) x =integral f[g(x)]mono(d)g(x)=integral f(u)mono(d)u $

#subsec[换元法]
+ 三角换元法：\ 
  //$      x=a sin t,x=a cos t    "   "       x=a tan t , x=a sec t     "   "     x=a csc t , x=a cot t    $
  //$       x=a sinh t , x=a cosh t    "   "      x=a tanh t , x=a sech t    "   "      x=a csch t , x=a coth t    $  \
  $ sqrt(a^2-x^2) arrow x=a sin t,sqrt(a^2+x^2) arrow x= a tan t,sqrt(x^2-a^2)arrow x=a sec t $
+ 恒等变形后做三角代换：\
  被积函数含有根式$sqrt(a x^2+b x+c)$时，化为$ sqrt(phi^2(x)+k^2),sqrt(phi^2(x)-k^2),sqrt(k^2-phi^2(x)) $再做三角代换
+ 根式代换法：\
  被积函数含有根式$root(n,a x+b),sqrt((a x +b)/(c x+d)),sqrt(a e^(b x)+c)$时，一般令$ sqrt(* )=t$,若同时含有$root(n,a x+b),root(m,a x+b)$,取$m,n$最小公倍数$l$,令$root(l,a x+b)=t$,再做根式代换法
  + 倒代换法：\
  被积函数分母次数比分子高两次及以上时，令$u=1/x$

#subsec[分部积分法]
$ integral u mono(d)v=u v-integral v mono(d)u $
推广有：$ integral u v^((n+1))mono(d)x=u v^((n))-u'v^((n-1))+u''v^((n-2))- dots +(-1)^(n)u^((n))v+(-1)^(n+1)integral u^((n+1))v mono(d)x $

#subsec[有理函数积分]
将有理函数拆成若干项最简有理分式之和
方法：\
+ 分母一次单因式产生一项$A/(a x +b)$
+ 分母k重单因式产生k项，分别为$A_1/(a x+b),A_2/(a x+b)^2,dots A_k/(a x +b)^k (k>0,k eq.not 1)$
+ 分母二次单因式产生一项$A/(a x^2 +b x +c)$
+ 分母k重二次单因式产生k项，分别为$(A_1 x+B_1 )/(a x^2+b x+c),(A_2 x +B_2)/(a x^2+b x+c)^2,dots (A_k x +B_k)/(a x^2+b x+c)^k (k>0,k eq.not 1)$

三角有理式可用万能代换法：\
$ t=tan x/2,sin x =(2t)/(1+t^2),cos t =(1-t^2)/(1+t^2),mono(d)x=2/(1+t^2)mono(d)x $

#sec[定积分计算]
设函数$F(x)$是连续函数$f(x)$在区间$[a,b]$上的一个原函数，则：\
$ integral_a^b f(x) mono(d)x=F(b)-F(a) $
+ 定积分的分部积分法：\
  $ integral_a^b u mono(d)v=u v|_a^b-integral_a^b v(x) u'(x) mono(d)x $
+ wallias公式：\
  $ integral_0^(pi/2)sin^n x mono(d)x=integral_0^(pi/2)cos^n x mono(d)x=cases((n-1)/n dot (n-3)/(n-2) dot dots dot 2/3dot 1 ","n"为大于1的奇数",(n-1)/n dot (n-3)/(n-2) dot dots dot 1/2 dot pi/2 ","n"为正偶数") $\
 $ integral_0^(pi)sin^n x mono(d)x=cases(2 dot (n-1)/n dot (n-3)/(n-2) dot dots dot 2/3dot 1 ","n"为大于1的奇数",2 dot (n-1)/n dot (n-3)/(n-2) dot dots dot 1/2 dot pi/2 ","n"为正偶数") $\
 $ integral_0^(pi)cos^n x mono(d)x=cases(0 ","n"为正奇数",2 dot (n-1)/n dot (n-3)/(n-2) dot dots dot 1/2 dot pi/2 ","n"为正偶数") $
 $ integral_0^(2pi)sin^n x mono(d)x=integral_0^(2pi)cos&^n x mono(d)x =cases(0 ","n"为正奇数",4 dot (n-1)/n dot (n-3)/(n-2) dot dots dot 1/2 dot pi/2 ","n"为正偶数") $