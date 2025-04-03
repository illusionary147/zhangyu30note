#set text(font: "SimSun")
//#set par(spacing: 1.5em,leading: 0.75em)
#set enum(indent: 3em)
#let sec(content)={
  counter("sec").step()
  set align(left)
  set text(size:17pt)
  context heading(math.section+counter("sec").display("1")+[ ]+content,numbering: none)
}

#let subsec(content)={
  set text(size:14pt)
  
  context heading(h(1em)+content,numbering: none,level: 2)
}

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}
#set par(first-line-indent: (amount:2em,all:true))
#set page(margin:(x:40pt))

#outline()

#sec[函数]
#subsec[函数有界性]
+ 若$f(x)$在$(a,b)$内为连续函数，且$limits(lim)_(x arrow a^+)f(x)$和$limits(lim)_(x arrow b^-)f(x)$都存在，则$f(x)$在区间$(a,b)$内有界.
+ 有界函数与有界函数的和、差、积仍然是有界函数.

#sec[极限]
#subsec[极限的定义]
设函数$f ( x )$在点$x_0$的某个去心邻域内有定义，如果存在常数$A$，对于任意给定的$epsilon > 0$，总存在正数$delta$，使得当$0<|x-x_0|<delta$时，对应的函数值$f(x)$满足不等式$|f(x)-A|< epsilon$，那么就称常数$A$是函数$f(x)$当$x arrow x_0$时的极限，记作$ lim_(x arrow x_0) f ( x ) , "或"  f(x) arrow A(x  arrow x_0) $
写成"$epsilon - delta$语言":$ limits(lim)_(x arrow x_0) f( x )=A arrow.l.r.double forall epsilon > 0 , exists delta > 0,$当$0<abs(x-x_0 )<delta$时，有$abs(f(x)-A)<epsilon$.
#subsec[极限运算]
先实数运算再极限运算，实数系$RR$中不存在非零无穷小量与无穷大量
#subsec[极限四则运算]
设$display(lim_(x arrow x_0) )f(x)=A,display(lim_(x arrow x_0)) g(x)=B$，则:\
#h(1em)
+ $ display(lim_(x arrow x_0)[k f(x) plus.minus l g(x)])=k lim f(x) plus.minus l lim g(x)=k A plus.minus l B $
+ $ display(lim_(x arrow x_0)f(x)g(x))= lim f(x) dot lim g(x)= A dot B,"特别地，若"lim f(x)"存在"，n "正整数，则"\ lim [f(x)]^n= lim f(x) dot f(x) ... f(x)= [lim f(x)]^n $
+ $ display(lim_(x arrow x_0)f(x)/g(x))=(lim f(x))/(lim g(x)) = A / B (B eq.not 0) $

#subsec[极限性质]
+ 唯一性
  \ 可用反证法+三角不等式证明
+ 局部有界性
  \ 若$f(x)$在$x_0$的某个去心邻域内有界，则$limits(lim)_(x arrow x_0)f(x)=0$
+ 局部保号性
  \ 若函数$f(x) arrow A(x-x_0)$且$A>0(或 A<0)$,那么存在常数$delta>0$，使得当$0<abs(x-x_0)<delta$时，有$f(x)>0(或 f(x)<0)$.如果在$x_0$的某去心邻域内$f(x)>=0(或 f(x)<=0)$ 且$limits(lim)_(X arrow x_0)=A$，则$A>=0$ 或$A<=0$.


#sec[无穷小]
#subsec[无穷小定义]
//#set par(leading:1.5em)
设函数$f(x)$在点$x_0$的某个去心邻域内有定义，如果$limits(lim)_(x arrow x_0)f(x)=0(或 limits(lim)_(x arrow oo)f(x)=0)$，那么称函数$f(x)$是当$x arrow x_0( 或 x arrow oo)$时的无穷小. 记为:
$ limits(lim)_(x arrow x_0) f(x)=0 (或 limits(lim)_(x arrow oo)f(x)=0) $

#subsec[无穷小性质]
+ 有界函数与无穷小的乘积仍然是无穷小
+ 有限个无穷小的和是无穷小
+ 有限个无穷小的乘积是无穷小

#subsec[无穷小比阶]
+ 若$display(lim alpha(x)/beta(x)=0)$,则称$alpha(x)$是比$beta(x)$高阶的无穷小，记为$alpha(x)=o(beta(x))$
+ 若$display(lim alpha(x)/beta(x)=c),c eq.not 0$,则称$alpha(x)$与$beta(x)$ 是同阶无穷小,记为$alpha(x)~beta(x)$
+ 若$display(lim alpha(x)/beta(x)=1)$,则称$alpha(x)$与$beta(x)$是等价无穷小
  \ #box(fill:aqua,stroke:rgb(0,48,251),radius:3pt,outset:3pt)[#text(fill:purple)[存在无法比阶的无穷小]]

#subsec[常用等价无穷小]
$ sin x ~ x,tan x ~ x, arcsin x ~ x, arctan x ~ x,ln(1+x)~x,e^x -1 ~ x, $
$ a^x -1 ~ x ln a,1-cos x ~ 1/2 x^2,(1+x)^a -1 ~ a x,x-sin x ~ 1/6 x^3 $

#subsec[无穷小运算]
设m,n为正整数，则：
+ $ o(x^m) plus.minus o(x^n)=o(x^l),l>=min{m,n} $
+ $ o(x^m) dot o(x^n)=o(x^(m+n)),x^m dot o(x^n)=o(x^(m+n)) $
+ $ o(x^m)=o(k x^m)=k o(x^m),k eq.not 0 $

#sec[无穷大]
#subsec[无穷大定义]
设函数$f(x)$在点$x_0$的某个去心邻域内有定义，如果对于任意正数$M$，总存在正数$delta$，使得当$0<abs(x-x_0)<delta$时，对应的函数值$f(x)$满足不等式$abs(f(x))>M$，那么称函数$f(x)$是当$x arrow x_0$时的无穷大.记为:
$ limits(lim)_(x arrow x_0)f(x)=oo $


#sec[泰勒公式]
设函数$f(x)$在点$x_0$的某个去心邻域内具有$n$阶导数，那么对于这个邻域内的任意$x$，有:$ f(x)=sum_(i=0)^n (f^((i))(x_0)(x-x_0)^i)/(i!)+o(x^n)"    "o(x^n)"为皮亚诺余项" $
$ f(x)=sum_(i=0)^n (f^((i))(x_0)(x-x_0)^i)/(i!) + (f^((n+1)) (xi))/(n+1)! (x-x_0)^(n+1) "      带有拉格朗日余项的泰勒展开"，xi"介于"x 和 x_0"之间" $
#subsec[常用泰勒公式]
+ $ e^x=1+x+x^2/2!+x^3/3!+...+x^n/n!+o(x^n) $
+ $ sin x=x-x^3/3!+x^5/5!+...+(-1)^n x^(2n+1)/(2n+1)!+o(x^(2n+1)) $
+ $ cos x=1-x^2/2!+x^4/4!+...+(-1)^n x^(2n)/(2n)!+o(x^(2n)) $
+ $ ln(1+x)=x-x^2/2+x^3/3-...+(-1)^(n-1) x^n/n+o(x^n) $
+ $ (1+x)^a=1+a x+a(a-1)x^2/2!+...+a(a-1)...(a-n+1)x^n/n!+o(x^n) $
+ $ tan x=x+x^3/3+x^5/5+...+x^(2n+1)/(2n+1)+o(x^(2n+1)) $
+ $ arcsin x=x+x^3/6+x^5/40+...+(2n-1)!!/(2n)!! x^(2n+1)+o(x^(2n+1)) $
+ $ arctan x=x-x^3/3+x^5/5-...+(-1)^(n-1) x^(2n+1)/(2n+1)+o(x^(2n+1)) $
简化为：
+ $ e^x=1+x+x^2/2!+x^3/3!+ o(x^3) $
+ $ sin x=x-x^3/3!+ o(x^3) $
+ $ cos x=1-x^2/2!+x^4/4!+ o(x^4) $
+ $ ln(1+x)=x-x^2/2+x^3/3+ o(x^2) $
+ $ (1+x)^a=1+a x+(a(a-1)x^2)/2!+ o(x^2) $
+ $ tan x = x + x^3/3 +o(x^3) $
+ $ arcsin x = x + x^3/3! +o(x^3) $
+ $ arctan x = x -x^3/3 + o(x^3) $


#sec[连续与间断]
#subsec[连续定义]
设函数$f(x)$在$x_0$的某一邻域内有定义，且有$limits(lim)_(x arrow x_0)f(x)=f(x_0)$，则称函数$f(x)$在点$x_0$处连续。\ 
#h(2em) #box(fill:aqua,stroke:rgb(0,48,251),radius:3pt,outset:3pt)[#text(fill:purple)[设$f(x)$在点$x_0$处连续，且$f(x_0)>0$，则存在$delta>0$，使得当$abs(x-x_0)$时，$f(x)>0$]]

#subsec[间断定义与分类]
+ 可去间断点
  \ 若$limits(lim)_(x arrow x_0)f(x)=A eq.not f(x_0)$或$f(x_0)$无定义，则称$x=x_0$为可去间断点。
+ 跳跃间断点
  \ 若$limits(lim)_(x arrow x_0 +)f(x)=A^+,limits(lim)_(x arrow x_0-)f(x)=A^-$且$A^+ eq.not A^-$，则称$x=x_0$为跳跃间断点。
+ 无穷间断点
  \ 若$limits(lim)_(x arrow x_0)f(x)=oo$或$limits(lim)_(x arrow x_0 +)f(x)=oo$，或$limits(lim)_(x arrow x_0 -)f(x)= oo$则称$x=x_0$为无穷间断点。

#enum(start:4)[震荡间断点\ 若$limits(lim)_(x arrow x_0)f(x)$震荡不存在，则称$x=x_0$为震荡间断点。]
#box(fill:aqua,stroke:rgb(0,48,251),radius:3pt,outset:3pt)[#text(fill:purple)[可去间断点和跳跃间断点统称为第一类间断点，无穷间断点和震荡间断点属于第二类间断点]]