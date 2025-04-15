#import "utils.typ" : section, subsec

#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true),spacing: 1.2em)
#set page(margin:(x:40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}

#outline()
#pagebreak()

#section[中值定理]
设$f(x)在 [a,b]$上连续，则
#subsec[定理一]
$m<=f(x)<=M,$其中$m,M$分别是$f(x)在 [a,b]$的最小值与最大值。

#subsec[定理二(介值定理)]
当$m<=mu<=M$时，存在$xi in [a,b],$使得$f(xi)=mu$

#subsec[定理三（平均值定理）]
当$a<x_1<x_2<dots<x_n<b$时，在$[x_1,x_2]$内至少存在一点$xi$，使得$ f(xi)=(f(x_1)+f(x_2)+dots+f(x_n))/n $

#subsec[定理四（零点定理）]
当$f(a) dot f(b)<0$时，存在$xi in (a,b)$,使得$f(xi)=0$.

#subsec[定理五（费马定理）]
设$f(x)$在点$x_0$处满足$cases(1 "可导",2"取极值")$,则$f'(x_0)=0$

#subsec[定理六(罗尔定理)]
设$f(x)$满足1在$[a,b]$内连续，2在$(a,b)$内可导，3 $f(a)=f(b)$,则存在$xi in (a,b)$,使得$f'(xi)=0$

#subsec[定理七（拉格朗日中值定理）]
设$f(x)$满足1在$[a,b]$连续2在$(a,b)$可导，则存在$xi in (a,b)$,使得$f(b)-f(a)=f'(xi)(b-a)$或$ f'(xi)=(f(b)-f(a))/(b-a) $

#subsec[定理八（柯西中值定理）]
设$f(x)，g(x)$满足在$[a,b]$连续，$(a,b)$可导，$g'(x) eq.not 0$,则存在$xi in (a,b),$使得$ (f(b)-f(a))/(g(b)-g(a))=(f'(xi))/(g'(xi)) $

#subsec[定理九（泰勒公式）]
设$f(x)$在$[a,b]$上连续,在点$x_0$的某个邻域内$n+1$阶导数存在，则存在$xi in (a,b)$,使得$ f(x)=f(x_0)+f'(x_0)(x-x_0)+f''(x_0)(x-x_0)^2/2+f'''(x_0)(x-x_0)^3/3!+dots+f^((n))(x)(x-x_0)^n/n!+(f^((n+1))(xi))/(n+1)! (x-x_0)^(n+1) $


#section[微分等式]
#subsec[零点定理]
$f(x)$在$[a,b]$连续，且$f(a)f(b)<0$，则$f(x)=0$在$(a,b)$内至少有一个根

#subsec[单调性]
若$f(x)$在$(a,b)$内单调，则$f(x)=0$在$(a,b)$内至多有一个根。

#subsec[实系数奇次方程至少有一个实根]

#subsec[罗尔定理推论]
若$f^((n))=0$至多有$k$个根，则$f(x)$至多有$k+n$个根。


#section[微分不等式]
#subsec[函数性态（单调性，最值，凹凸性等）证明不等式]
+ 若在$[a,b]$上有$f''(x)>0,a<x<b,f(a)=f(b)=0$,则有$f(x)<0$