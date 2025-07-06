#import "utils.typ": my_init, section, subsec
//#show:my_init()
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
#set enum(spacing: 1.5em)
#set list(spacing: 1.5em, indent: 2em)
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#outline()
#pagebreak()

#let 大数定律与中心极限定理 = {
  section[依概率收敛]
  [
    设随机变量$X$与随机变量序列${X_n}(n=1,2,dots)$,如果对于任意的$epsilon>0$,有$ lim_(n->oo)P{abs(X_n-X)>=0}=0"或"lim_(n arrow oo)P{abs(X_n-X)<epsilon}=1, $则称随机变量序列${X_n}$*依概率收敛于随机变量$X$*,记为$ lim_(n arrow oo)X_n=X"或"X_n arrow.long^P X(n arrow oo) $
  ]
  section[大数定律]
  [
    + 切比雪夫大数定律：假设${X_n}$是相互独立的随机变量序列，如果方差$D X_i$存在且一致有上界，即存在常数$C$，使$D X_i<=C$对一切$i>=1$均成立，则${X_n}$服从大数定律：$ 1/n limits(Sigma)_(i=1)^n X_i arrow.long^P 1/n limits(Sigma)_(i=1)^n E X_i $
    + 伯努利大数定律：假设$mu_n$是$n$重伯努利试验中事件$A$发生的次数，在每次试验中事件$A$发生的概率为$p$,则$mu_n/n arrow.long^P p$,即对任意$epsilon>0$,有$ limits(lim)_(n arrow oo)P{abs(mu_n/n -p)<epsilon}=1 $
    + 辛钦大数定律：假设${X_n}$是独立同分布的随机变量序列，如果数学期望$E X_i=mu$存在，则$1/n limits(Sigma)_(n arrow oo)X_i arrow.long^P mu$,即对任意实数$epsilon>0$,有$ lim_(n arrow oo)P{abs(1/n limits(Sigma)_(i=1)^(n)-mu)<epsilon}=1 $
  ]
  section[中心极限定理]
  [
    + 列维-林德伯格定理：假设${X_n}$是独立同分布的随机变量序列，如果$ E X_i =mu,D X_i=sigma^2>0 $存在，则对任意实数$x$有$ lim_(n arrow oo)P{(limits(Sigma)_(i=1)^n X_i - n mu)/(sqrt(n)sigma)<=x}=1/sqrt(2 pi)integral_(-oo)^x e^(-t^2/2)dd(t)=Phi(x) $
    + 棣莫弗-拉普拉斯定理：假设随机变量$Y_n ~ B(n,p)$则对任意实数$x$有：$ lim_(n arrow oo)P{(Y_n-n p)/sqrt(n p (1-p))<=x}=1/sqrt(2 pi)integral_(-oo)^x e^(-t^2/2)dd(t)=Phi(x) $
  ]
}

#大数定律与中心极限定理
