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

#let 数理统计 = {
  section[样本与总体]
  subsec[样本与总体的概念]
  [
    研究对象全体称为总体，组成总体的每个元素称为个体。

    $n$个相互独立且与总体$X$具有相同概率分布的随机变量$X_1,X_2,dots,X_n$所组成的整体$(X_1,X_2,dots,X_n)$称为来自总体$X$、容量为$n$的一个简单随机样本，称为样本。一次抽样结果的$n$个具体数值$(x_1,x_2,dots,x_n)$称为来自样本$X_1,X_2,dots,X_n$的一个观测值（或样本值）。
  ]
  subsec[样本的分布(iid)]
  [
    对于容量为$n$的样本$X_1,X_2,dots,X_n$,有如下定理：

    设总体$X$的分布函数$F(x)$(概率密度为$f(x)$,或概率分布为$p_i=P{X=x_i}$),则$(X_1,X_2,dots,X_n)$的分布函数为$ F(x_1,x_2,dots,x_n)=product_(i=1)^n F(x_i) $相应地：

    + 对于离散型随机变量的样本，联合分布为$ P{X_1=x_1,X_2=x_2,dots,X_n=x_n}=product_(i=1)^(n)P{X_i=x_i} $
    + 对于连续型随机变量的样本，联合分布为$ f(x_1,x_2,dots,x_n)=product_(i=1)^(n)f(x_i) $
  ]
  section[统计量及其分布]
  subsec[统计量]
  [
    设$X_1,X_2,dots,X_n$为来自总体$X$的一个样本，$g(x_1,x_2,dots,x_n)$为$n$元函数，如果$g$中不含任何未知参数，则称$g(X_1,X_2,dots,X_n)$为样本$X_1,X_2,dots,X_n$的一个统计量。若$(x_1,x_2,dots,x_n)$为样本值，则称$g(x_1,x_2,dots,x_n)$为样本$g(X_1,X_2,dots,X_n)$的观测值。
  ]
  subsec[常用统计量]
  [
    + 样本数字特征
      - 样本均值：$dash(X)= display(1/n sum_(i=1)^n X_i)$
      - 样本方差：$S^2= display(1/(n-1) sum_(i=1)^n (X_i-dash(X))^2)$
      - 样本标准差：$display(S=sqrt(1/(n-1) sum_(i=1)^n (X_1-dash(X))^2))$
      - 样本$k$阶矩：$display(A_k=1/n sum_(i=1)^n X_i^k)(k=1,2,dots)$
      - 样本$k$阶中心矩：$display(B_k=1/n sum_(i=1)^n (X_i-dash(X))^k)(k=1,2,dots)$

    + 顺序统计量

      将样本$X_1,X_2,dots,X_n$的$n$个观测值按其取值从小到大的顺序排列，得$ X_((1))<=X_((2))<=dots<=X_((n)) $.

      随机变量$X_((k))$称为*第$k$顺序统计量*，其中$X_((1))$是最小顺序统计量，而$X_((n))$是最大顺序统计量：$ X_((1))=min{X_1,X_2,dots,X_n}, X_((n))=max{X_1,X_2,dots,X_n} $.

    + 性质

      设总体$X$的期望$E X=mu$,方差$D X=sigma^2$,$X_1,X_2,dots,X_n$是取自总体$X$,容量为$n$的一个样本，$dash(X),S^2$分别为样本均值和样本方差，则：
      $ E X_i=mu,D X_i = sigma^2(i=1,2,dots,n),E dash(X)=E X=mu,D dash(X)=1/n D X=sigma^2/n,E(S^2)=D X=sigma^2 $
  ]
  section[$chi^2$分布，$t$分布和$F$分布]
  subsec[$chi^2$分布]
  [
    若随机变量$X_1,X_2,dots,X_n$相互独立且都服从标准正态分布，则随机变量$display(X=sum_(i=1)^n X_i^2)$服从自由度为$n$的$chi^2$分布，记为$X ~ chi^2(n)$

    对于给定的$alpha(0<alpha<1)$,称满足$ P{chi^2>chi^2_alpha (n)}=integral_(chi^2_alpha (n))^(+oo)f(x)dd(x)=alpha $的$chi^2_alpha (n)$为$chi^2 (n)$的上$alpha$分位数。

    性质
    + 若$X_1 ~ chi^2(n_1),X_2~chi^2(n_2),X_1,X_2$相互独立，则$ X_1+X_2~chi^2(n_1+n_2) $
    + 若$X~chi^2(n)$,则$E X=n,D X=2n$
  ]
  subsec[$t$分布]
  [
    设随机变量$X~N(0,1),Y~chi^2(n)$且$X,Y$相互独立，则随机变量$t=X/sqrt(Y \/ n)$服从自由度为$n$的$t$分布，记为$t~t(n)$

    对于给定的$alpha(0<alpha<1)$,称满足$ P{t>t_alpha (n)}=integral_(t_alpha (n))^(+oo)f(x)dd(x)=alpha $的$t_alpha (n)$为$t(n)$的上$alpha$分位数。

    性质：
    + $t$分布的概率密度$f(x)$图形关于$x=0$对称，因此$ E t=0(n>=2) $
    + 由$t$分布的概率密度$f(x)$图形的对称性，可知$P{t>-t_alpha (n)}=P{t>t_(1-alpha)(n)}$,故$t_(1-alpha)(n)=-t_alpha (n)$
  ]
  subsec[$F$分布]
  [
    设随机变量$X~chi^2(n_1),Y~chi^2(n_2)$且$X,Y$相互独立，则随机变量$F=(X\/n_1) / (Y\/n_2)$服从自由度为$(n_1,n_2)$的$F$分布，记为$F~F(n_1,n_2)$

    对于给定的$alpha(0<alpha<1)$,称满足$ P{F>F_alpha (n_1,n_2)}=integral_(F_alpha (n_1,n_2))^(+oo)f(x)dd(x)=alpha $的$F_alpha (n_1,n_2)$为$F(n_1,n_2)$的上$alpha$分位数。

    性质：
    + 若$F~F(n_1,n_2),$则$1/F~F(n_2,n_1)$
    + $F_(1-alpha) (n_1,n_2)=display(1/(F_alpha (n_2,n_1)))$
    + 若$t~t(n)$,则$t^2~F(1,n)$
  ]
  section[正态总体条件下的常用结论]
  [
    设$X_1,X_2,dots,X_n$是来自正态总体$N(mu,sigma^2)$的一个样本，$dash(X),S^2$分别是样本均值和方差，则
    + $dash(X)~N(mu,sigma^2/n),$即$display((dash(X)-mu)/(sigma/sqrt(n))=(sqrt(n)(dash(X)-mu))/sigma~N(0,1))$
    + $display(1/sigma^2 sum_(i=1)^n (X_i-mu)^2)~chi^2(n)$
    + $display(((n-1)S^2)/sigma^2=sum_(i=1)^n ((X_i-dash(X))^2)/sigma^2)~chi^2(n-1)$
    + $dash(X)$与$S^2$相互独立（正态总体下成立）,$display((sqrt(n)(dash(X)-mu))/S ~t(n-1))$,$sigma$未知时，进一步有$ (n(dash(X)-mu)^2)/S^2 ~ F(1,n-1) $
  ]
  section[参数的点估计]
  [
    估计量、估计值
  ]
  subsec[矩估计]
  [
    对于一个参数，
    - 用一阶矩建立方程$dash(X)=E X$
    - 若一阶矩方程不能用，则用二阶矩建立方程$display(1/n sum_(i=1)^n X_i^2)=E(X^2)$
    对于两个参数，用一阶矩和二阶矩建立方程组
  ]
  subsec[最大似然估计]
  [
    + 写似然函数$ L(x_1,x_2,dots,x_n;theta)=cases(display(product_(i=1)^n p(x_i;theta)), display(product_(i=1)^n f(x_i;theta))) $
    + 求参数
      - 若似然函数有驻点，则令$(dif L)/(dif theta)=0$或$(dif (ln L))/(dif theta)=0$,解出$hat(theta)$
      - 若无驻点，使用定义求出$hat(theta)$
      - 若似然函数为常数，用定义求$hat(theta)$，此时$hat(theta)$不唯一
  ]
  subsec[估计量评价标准]
  [
    + 无偏性：

      对于估计量$hat(theta)$,若$E hat(theta)=theta$,则$hat(theta)$是$theta$的无偏估计量
    + 有效性（最小方差）

      若$E hat(theta)_1=theta,E hat(theta)_2=theta$,即$hat(theta)_1,hat(theta)_2$均是$theta$的无偏估计量，当$D hat(theta)_1<D hat(theta)_2$时，$hat(theta)_1$比$hat(theta)_2$有效
    + 一致性（只针对大样本）

      若$hat(theta)$为$theta$的估计量，对任意$epsilon>0$,有：$ lim_(n -> oo)P{abs(hat(theta)-theta)>=epsilon}=0 $或$ lim_(n -> oo)P{abs(hat(theta)-theta)<epsilon}=1 $
      即当$hat(theta)-->^P$时，称$hat(theta)$为$theta$的一个一致（或相合）估计量。
  ]
  section[参数的区间估计]
  subsec[概念]
  [
    设$theta$是总体$X$的分布函数的一个未知参数，对于给定的$alpha in (0,1)$,如果由样本$X_1,X_2,dots,X_n$确定的两个统计量$hat(theta)_1=hat(theta)_1 (X_1,X_2,dots,X_n),hat(theta)_2=hat(theta)_2 (X_1,X_2,dots,X_n)$满足$ P{hat(theta)_1 < theta < hat(theta)_2}=1-alpha, $则称区间$(hat(theta)_1,hat(theta)_2)$为$theta$的置信度为$1-alpha$的置信区间。$hat(theta)_1,hat(theta)_2$分别称为$theta$的置信度为$1-alpha$的双侧置信区间的下限和上限，$1-alpha$称为置信度或置信水平，$alpha$称为显著性水平。若$P{theta<hat(theta)_1}=P{theta>hat(theta)_2}=alpha/2$，则称这种置信区间为等尾置信区间
  ]
  subsec[单个正太总体分布均值和方差的置信区间]
  [
    设$X~N(mu,sigma^2)$,从总体$X$中抽取样本$X_1,X_2,dots,X_n$，样本均值为$dash(X)$,方差为$S^2$
    + $sigma^2$已知时，$mu$的置信水平是$1-alpha$的置信区间为$ (dash(X)-sigma/sqrt(n)z_(alpha/2),dash(X)+sigma/sqrt(n)z_(alpha/2)) $
    + $sigma^2$未知时，$mu$的置信水平是$1-alpha$的置信区间为$ (dash(X)-S/sqrt(n)z_(alpha/2)(n-1),dash(X)+S/sqrt(n)z_(alpha/2)(n-1)) $
    + $mu$已知，$sigma^2$的置信水平是$1-alpha$的置信区间为$ ((sum_(i=1)^n (X_1-mu)^2)/(chi^2_(alpha/2)(n)), (sum_(i=1)^n (X_1-mu)^2)/(chi^2_(1-alpha/2)(n))) $
    + $mu$未知，$sigma^2$的置信水平是$1-alpha$的置信区间为$ (((n-1)S^2)/(chi^2_(alpha/2)(n-1)),((n-1)S^2)/(chi^2_(1-alpha/2)(n-1))) $
  ]
  section[假设检验]
  subsec[概念]
  [
    关于总体的每一种论断称为*统计假设*，然后根据样本观察数据或试验结果所提供的信息去推断（检验）这个看法是否成立，这类统计推断问题称为*假设检验*
  ]
  subsec[原假设与备择假设]
  [
    常常把没有充分理由不能轻易否定的假设称为*原假设*（*基本假设或零假设*），记为$H_0$,将其否定的假设称为*对立假设*或*备择假设*，记为$H_1$
  ]
  subsec[小概率原理与显著性水平]
  [
    + 小概率原理

      对假设进行检验的基本思想是采用带有概率性质的反证法，这种方法的依据是小概率原理：概率很接近0的事件在一次试验中认为不会发生，若发生小概率事件，则拒绝原假设。

    + 显著性水平

      小概率事件中的“小概率”的值没有统一规定，通常是根据实际问题的要求，规定一个界限$alpha$，当一个事件的概率不大于$alpha$时，即认为它是小概率事件。在假设检验中，$alpha$称为显著性水平。
  ]
  subsec[正太总体下的六大检验及拒绝域]
  [
    + $sigma^2$已知，$mu$未知，$H_0:mu=mu_0,H_1:mu eq.not mu_0$,则拒绝域为$(-oo,mu_0-sigma/sqrt(n)z_(alpha/2))union(mu_0+sigma/sqrt(n)z_(alpha/2), +oo)$
    + $sigma^2$未知，$mu$未知。$H_0:mu=mu_0,H_1:mu eq.not mu_0$,则拒绝域为$ (-oo,mu_0-S/sqrt(n)t_(alpha/2)(n-1))union(mu_0+S/sqrt(n)t_(alpha/2)(n-1), +oo) $
    + $sigma^2$已知，$mu$未知，$H_0:mu<=mu_0,H_1:mu>mu_0$,则拒绝域为$ [mu_0+sigma/sqrt(n)z_(alpha), +oo) $
    + $sigma^2$已知，$mu$未知，$H_0:mu>=mu_0,H_1:mu<mu_0$,则拒绝域为$ (-oo,mu_0-S/sqrt(n)z_(alpha)] $
    + $sigma^2$未知，$mu$未知，$H_0:mu<=mu_0,H_1:mu>mu_0$,则拒绝域为$ [mu_0+S/sqrt(n)t_(alpha)(n-1), +oo) $
    + $sigma^2$未知，$mu$未知，$H_0:mu>=mu_0,H_1:mu<mu_0$,则拒绝域为$ (-oo,mu_0-S/sqrt(n)t_(alpha)(n-1)] $
  ]
  section[两类错误]
  [
    + 第一类错误（弃真）：

      若$H_0$为真，按检验法否定$H_0$，称为弃真错误，概率为$alpha=P{"拒绝"H_0bar H_0"为真"}$
    + 第二类错误（取伪）:

      若$H_0$为假，按检验法接受$H_0$，称为取伪错误，概率为$beta=P{"接受"H_0bar H_0"为假"}=P{"接受"H_0 bar H_1"为真"}$
  ]
}

#数理统计
