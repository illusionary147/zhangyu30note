#import "utils.typ" : sec, subsec

#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true))
#set page(margin:(x:40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}

#outline()
#pagebreak()
#sec[导数定义]
若$Delta y$与$Delta x$比值在$Delta x arrow 0$时极限存在，则称函数在$x_0$处可导，导数为$f'(x_0)$。
$ f'(x_0)=lim_(Delta x arrow 0)(Delta y)/(Delta x)=lim_(Delta x arrow 0)(f(x_0 + Delta x)-f(x_0))/(Delta x) $
可导必然连续，反之不成立。

#subsec[单侧导数:]
$ lim_(Delta x arrow 0^-)(f(x_0 + Delta x)-f(x_0))/(Delta x)=f'_-(x_0) $
$ lim_(Delta x arrow 0^+)(f(x_0 + Delta x)-f(x_0))/(Delta x)=f'_+(x_0) $
$f'(x_0)$存在 #math.arrow.l.r.double 左导数$f'_-(x_0)$与右导数$f'_+(x_0)$存在且相等

#subsec[]
若$f(x_0)$在$x_0$处连续：
+ $f(x_0)eq.not 0$ #math.arrow.double$abs(f(x))$在$x_0$处可导且$ [abs(f(x))]' bar_(x=x_0)=cases(f'(x_0)",   "f(x_0)>0,-f'(x_0)",  "f(x_0)<0) $
+ $f(x_0)=0$,且$ cases(f'(x_0)=0 arrow.double abs(f(x))"在"x_0"处可导且"[abs(f(x))]' bar_(x=x_0)=0,f'(x_0) eq.not 0 arrow.double abs(f(x))"在"x_0"处不可导") $
+ $f(x)$  在$x_0$处可导#math.arrow.l.r.double.not $abs(f(x))$在$x_0$处可导


#sec[导数的几何意义]
$f'(x_0)$表示函数$f(x)$在$x_0$处的切线斜率。曲线在$x_0$处的切线方程为$y=f(x_0)+f'(x_0)(x-x_0)$,法线方程为$y=f(x_0)-1/(f'(x_0))(x-x_0),f'(x_0) eq.not 0$

切线存在导数不一定存在，倒数存在切线一定存在


#sec[微分]
$ Delta y = A Delta x+ o(x)=upright(d)y + o(x) $
$ upright(d)y bar_(x=x_0)=A Delta x "或" upright(d)y bar_(x=x_0) = f'(x_0)upright(d)x $





#sec[OTHERS]
函数$f(x)$在$x=a$处连续，$F(x)=f(x) abs(x-a)$,则$f(a)=0$是$F(x)$在$x=a$处可导的充分必要条件。
