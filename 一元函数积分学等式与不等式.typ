#import "utils.typ" : section, subsec

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

#section[积分等式]
#subsec[中值定理]
设$f(x),g(x)$在$[a,b]$连续，且$g(x)$在该区间内不变号，则存在$xi in (a,b)$，使得$ integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x)dif x $

#subsec[夹逼法则]
设$f(x)$在$[0,1]$内连续，则$ limits(lim)_(n arrow oo)integral_0^1 x^n f(x)dif x=0 $

#subsec[积分法]


#section[积分不等式]
#subsec[单调性]

#subsec[拉格朗日中值定理]

#subsec[积分法]

#subsec[牛顿莱布尼茨公式]
