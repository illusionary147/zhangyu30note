#set text(font: "SimSun")
#set par(first-line-indent: (amount:2em,all:true))
#set page(margin:(x:40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}
#import "utils.typ" : section, subsec
#outline()
#pagebreak()
#section[数列极限定理]
#set enum(spacing:1.2em)
#set par(leading: 1.2em)
+ 若数列${a_n}$收敛，则其任何子列${a_n_k}$也收敛，且$limits(lim)_(k arrow oo)a_n_k = limits(lim)_(n arrow oo)a_n$
  \ 根据定理一，可以得到判断数列发散的方法，判断子列发散或两个子列收敛于不同的极限。
+ 给出数列${x_n}$，若$limits(lim)_(n arrow oo) x_n = a$存在，则a是唯一的。
+ 若数列${x_n}$极限存在，则数列${x_n}$有界。
+ 设$limits(lim)_(n arrow 00)x_n=a>b$,则存在$N>0$,当$n>N$时，有$x_n>a$.若数列${x_n}$从某项起有$x_n >= b$,且$limits(lim)_(n arrow oo)x_n=a$,则$a>=b$.其中$b$为任意实数.


#section[海涅定理]
设$f(x)$在$circle(U)(x_0,delta)$内有定义，则$limits(lim)_(x arrow x_0)f(x)=A$存在 #math.arrow.l.r.double 对任何$circle(U)(x_0,delta)$内以$x_0$为极限的数列${x_n}(x_n eq.not x_0)$,极限$limits(lim)_(n arrow oo)f(x_n)=A$存在。


#section[夹逼准则]
常用放缩方法：
+ 已知条件或由关系得出的简单大小关系
+ 简单放大与缩小
+ 重要不等式
+ 闭区间连续函数有最大最小值
+ 压缩映射


#section[单调有界:单调有界数列必有极限]
#subsec[证明数列单调性常用方法:]
+ 做差或做商
+ 数学归纳
+ 重要不等式
