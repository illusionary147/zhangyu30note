#import "utils.typ": section, subsec
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


#section[概念，性质与对称性]
#subsec[概念]
设$f(x,y)$是有闭界区域$D$上的有界函数，将整个闭区域$D$任意分成$n$个小闭区域$ Delta sigma_1,Delta sigma_2,Delta, dots,sigma_n $其中$Delta sigma_i$表示第$i$个小闭区域，也表示它的面积，在每个$Delta sigma_i$上任取一点$(xi_i,eta_i)$,做乘积$f(xi_i,eta_i) Delta sigma_i(i=1,2,dots,n)$,并作和$limits(Sigma)_(i=1)^n f(xi_i,eta_i)Delta sigma_i$,如果当各小闭区域的直径中的最大值$lambda$趋于零时，和的极限总存在，且与小闭区域的分割无关，则称$f(x,y)$在$D$上是可积的，极限值称为$f(x,y)$在$D$上的二重积分，记作$limits(integral.double)_D d(x,y)dif sigma$,即:$ limits(integral.double)_D f(x,y)dif sigma =lim_(lambda arrow 0)limits(Sigma)_(i=1)^n f(xi_i,eta_i)Delta sigma_i $

若函数$f$在有界闭区域$D$上连续，则二重积分$limits(integral.double)_D f(x,y) dif sigma$一定存在

#subsec[性质]
+ 性质一：

  $ limits(integral.double)_D 1 dot dif sigma=limits(integral.double)dif sigma =A,"其中"A"为"D"的面积" $
+ 性质二：当函数$f(x,y)$在闭区域$D$上可积时，$f(x,y)$在$D$上必有界

+ 性质三：设$k_1,k_2$为常数，则$ limits(integral.double)_D [k_1 f(x,y) plus.minus k_2f(x,y)]dif sigma=k_1 limits(integral.double)_D f(x,y)dif sigma plus.minus k_2 limits(integral.double)_D f(x,y) dif sigma $

+ 性质四：设$f(x,y)$在有界闭区域$D$上可积，且$D_1 inter D_2 = emptyset,D_1 union D_2=D$,则$ limits(integral.double)_D f(x,y)dif sigma =limits(integral.double)_(D_1) f(x,y)dif sigma +limits(integral.double)_(D_2) f(x,y)dif sigma $

+ 性质五：当$f(X,y),g(x,y)$在有界闭区域$D$上可积时，若在$D$上有$f(x,y)<=g(x,y)$,则有$ limits(integral.double)_D f(x,y)dif sigma <= limits(integral.double)_D g(x,y)dif sigma $
  特殊地，有$ abs(limits(integral.double)_D f(x,y) dif sigma)<= limits(integral.double)_D abs(f(x,y)) dif sigma $

+ 性质六：设$M,m$分别是函数$f(x,y)$在闭区域$D$上的最大值和最小值，$A$为$D$的面积,则有$ m A <= limits(integral.double)_D f(x,y)dif sigma <= M A $

+ 性质七：设$f(x,y)$在有界闭区域$D$上连续，$A$为$D$的面积，则在$D$上只少存在一点$(xi,eta)$，使得$ limits(integral.double)_D f(x,y)dif sigma =f(xi,eta)A $


#subsec[普通对称性]
#set par(first-line-indent: (amount: 0em, all: true))
+ 若$D$关于$y$轴对称，则
  $
    limits(integral.double)_D f(x,y) dif sigma=cases(2 limits(integral.double)_D_1 f(x,y) dif sigma",     "f(x,y)=f(-x,y), 0",                      "f(x,y)=-f(-x,y))
  $
  $D_1$为$D$在$y$轴的左/右半部分

+ 若$D$关于$x$轴对称，则
  $
    limits(integral.double)_D f(x,y) dif sigma=cases(2 limits(integral.double)_D_1 f(x,y) dif sigma",     "f(x,y)=f(x,-y), 0",                      "f(x,y)=-f(x,-y))
  $
  $D_1$为$D$在$x$轴的上/下半部分

+ 若$D$关于原点对称，则
  $
    limits(integral.double)_D f(x,y) dif sigma=cases(2 limits(integral.double)_D_1 f(x,y) dif sigma",     "f(x,y)=f(-x,-y), 0",                      "f(x,y)=-f(-x,-y))
  $
  $D_1$为$D$关于原点对称的部分

+ 若$D$关于直线$y=x$对称，则
  $
    limits(integral.double)_D f(x,y) dif sigma=cases(2 limits(integral.double)_D_1 f(x,y) dif sigma",     "f(x,y)=f(y,x), 0",                      "f(x,y)=-f(y,x))
  $
  $D_1$为$D$在$y=x$的上/下半部分

#subsec[轮换对称性]
#set par(first-line-indent: (amount: 2em, all: true))
直角坐标系下若区域关于$y=x$对称，则有$ limits(integral.double)_D f(x,y) dif sigma=limits(integral.double)_D f(y,x) dif sigma $


#section[计算]
#subsec[直角坐标系]
$ dif sigma = dif x dif y $可交换积分次序
#subsec[极坐标系]
$ dif sigma = r dif r dif theta $
#subsec[换元法]
$
  cases(x=x(u,v), y=y(u,v)),则 dif x dif y=abs(pdv((x,y), (u,v)))dif u dif v, pdv((x,y), (u,v))=mat(delim: "|", pdv(x, u), pdv(x, v); pdv(y, u), pdv(y, v))
$
