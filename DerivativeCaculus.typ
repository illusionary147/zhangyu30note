#import "utils.typ" : sec, subsec
#import "@preview/physica:0.9.5"

#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true))
#set page(margin:(x:40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  set text(size:13pt)
  it
}

#outline()
#pagebreak()

#set page(columns:2)
#sec[常见函数求导]
#set enum(spacing: 1.2em)
+ $(ln x)'=1/x $
+ $(arcsin x)'=1/(sqrt(1-x^2)) $
+ $(arccos x)'=-1/(sqrt(1-x^2)) $
+ $(arctan x)'=1/(1+x^2) $
+ $("arccot" x)'=-1/(1+x^2) $
+ $("sec" x )'= "sec" x tan x $
+ $(csc x)' = - csc x cot x $
+ $[ln(x + sqrt(x^2 plus.minus a^2))]'=1/(sqrt(x^2 plus.minus a^2)) $


#sec[一阶微分形式不变性]
$ mono(d){f[g(x)]}=f'[g(x)] mono(d)[g(x)]=f'[g(x)]dot g'(x) mono(d)x $


#sec[反函数的导数]
设$y=f(x)$为单调、可导函数，且$f'(x) eq.not 0$，则存在反函数$x=phi (y)$,且$(mono(d)x)/(mono(d)y)=1/((mono(d)y)/(mono(d)x))$,即$phi ' (y)=1/(f'(x))$
#parbreak()
若求$phi ''(y)$,不能直接使用求导公式，应按照高阶微分的定义进行推导:
$ (mono(d)^2x)/(mono(d)y^2)=(mono(d) (mono(d)x)/( mono(d)y))/(mono(d)y) $


#sec[隐函数求导]
设函数$y=y(x)$是由方程$F(x,y)=0$确定的可导函数，则：
+ 方程$F(x,y)=0$两边对自变量$x$求导，将$y$看作中间变量，得到一个关于$y'$的方程
+ 解方程即可求出$y'$


#sec[高阶导数]
+ 数学归纳
+ 莱布尼茨公式：\
  $ (u plus.minus v)^((n))=u^((n))plus.minus v^((n)) $
  $ (u v)^((n))=limits(Sigma)_(k=0)^n C_n^k u^((n-k)) v^((k)) $
+ 泰勒展开
  + 任意一个任意阶可导的函数都可以写成：\
    $ y=f(x)=limits(Sigma)_(n=0)^(oo)(f^((n))(x_0))/n! (x-x_0)^n $
  + 根据泰勒展开唯一性，比较次数。


#sec[参数方程]
函数由$ cases(x=phi(t),y=psi(t)) $ 确定，则：
$ (mono(d)y)/(mono(d)x)=(mono(d)y\/mono(d)t)/(mono(d)x\/mono(d)t) $