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

#let 随机变量的数字特征 = {
  section[一维随机变量的数字特征]
  subsec[随机变量的数学期望]
  [
    + 若$X$是离散型随机变量，分布列为$p_i=P{X=x_i}(i=1,2,dots)$，若级数$limits(Sigma)_(i=1)^(oo) x_i p_i$绝对收敛，则称随机变量$X$的数学期望存在，并将级数$limits(Sigma)_(i=1)^(oo) x_i p_i$的和称为随机变量$X$的数学期望，记为$E X$,即$ E X=limits(Sigma)_(i=1)^(oo) x_i p_i $

      若级数$limits(Sigma)_(i=1)^(oo) g(x_i) p_i$绝对收敛，则称$Y=g(X)$的数学期望$E(g(X))$存在，且$E(g(X))=limits(Sigma)_(i=1)^(oo) g(x_i) p_i$

    + 若$X$是连续型随机变量，概率密度为$f(x)$,若积分$integral_(-oo)^(+oo)x f(x)dd(x)$绝对收敛，则称随机变量$X$的数学期望存在，并将积分$integral_(-oo)^(+oo) x f(x) dd(x)$的值称为随机变量$X$的数学期望，记为$E X$.

      若积分$integral_(-oo)^(+oo) g(x) f(x) dd(x)$绝对收敛，则称$Y=g(X)$的数学期望$E(g(X))$存在，且$E(g(X))=integral_(-oo)^(+oo) g(x) f(x) dd(x)$

    + 性质
      - $E a=a,E(E X)=E X$(常数的期望等于常数)
      - $E(a X+b Y)=a E X+b E Y$
      - 若$X,Y$相互独立，则$E(X Y)=E X E Y$
  ]
  subsec[随机变量的方差，标准差]
  [
    + 设$X$是随机变量，若$E[(X-E X)^2]$存在，则称$E[(X-E X)^2]$为$X$的方差，记为$D X$,即$ D X=E[(X-E X)^2]=E(X^2)-(E X)^2 $称$sqrt(D X)$为$X$的标准差或均方差，记为$sigma(X)$，称随机变量$X^*=(X -E X)/sqrt(D X)$为$X$的标准化随机变量，此时$E X^*=0,D X^*=1$
    + 性质
      - $D X>=0,E(X^2)=D X+(E X)^2>=(E X)^2$
      - $D c=0 arrow.double.l.r X$几乎出处为某个常数$a$,即$P{X=a}=1$
      - $D(a X+b)=a^2 D X$
      - $D(a X+b Y)=a^2 D X+b^2 D Y+2 a b "Cov"(X,Y),\ D(limits(Sigma)_(i=1)^n a_i X_i)=limits(Sigma)_(i=1)^n a_i^2D X_i+2 limits(Sigma)_(1<=i<j<=n) a_i a_j "Cov"(X_i,X_j)$
      - 若$X,Y$相互独立，则$ D(a X+b Y)=a^2 D(X)+b^2D(Y), $$ D(X Y)=D X D Y+D X(E X)^2+D Y(E X)^2>=D X D Y $
      - 对任意常数$c$，有$D X=E[(X-E X)^2]<=E[(X-c)^2]$
  ]
  subsec[常见分布的数学期望和方差]
  [
    #table(
      columns: 4,
      align: center,
      inset: 1em,
      [分布], [分布列$p_k$或概率密度$f(x)$], [数学期望], [方差],
      [$0-1$分布], [$P{X=k}=p^k (1-p)^(1-k),k=0,1$], [$E X =p$], [$p(1-p)$],
      [几何分布$G(p)$], [$P{X=k}=p(1-p)^(k-1),k=1,2,dots$], [$E X=1/p$], [$D X=(1-p)/p^2$],
      [二项分布$B(n,p)$],
      [$P{X=k}=limits(Sigma)_(i=0)^n C_n^i p^i(1-p)^(n-i),k=0,1,dots,n$],
      [$E X=n p$],
      [$D X=n p(1-p)$],

      [泊松分布$P(lambda)$], [$P{X=k}=lambda^k /k! e^(- lambda),k=0,1,dots$], [$E X=lambda$], [$D X=lambda$],
      [均匀分布$U(a,b)$], [$f(x)=1/(b-a),a<=x<=b$], [$E X=(a+b)/2$], [$D X=(b-a)^2/12$],
      [指数分布$E(lambda)$], [$f(x)=lambda e^(-lambda x),x>=0$], [$E X=1/lambda$], [$D X=1/lambda^2$],
      [正态分布$N(mu,sigma^2)$],
      [$f(x)=1/(sqrt(2 pi sigma^2))e^(-(x-mu)^2/(2 sigma^2)),x in R$],
      [$E X=mu$],
      [$D X=sigma^2$],
    )
  ]
  section[二维随机变量数字特征]
  subsec[二维随机变量函数的数学期望]
  [
    设$X,Y$是随机变量，$g(X,Y)$为$X,Y$的函数
    + 如果$(X,Y)$为离散型随机变量，其联合分布律为$ p_(i j)=P{X=x_i,Y=y_j}(i,j=1,2,dots) $若级数$limits(Sigma)_(i)limits(Sigma)_j g(x_i,y_j)p_(i j)$绝对收敛，则定义$ E[(g(X,Y))] eq^(Z=g(X,Y))E Z=limits(Sigma)_(i)limits(Sigma)_j g(x_i,y_j)p_(i j) $
    + 如果$(X,Y)$为连续型随机变量，其联合概率密度为$f(x,y)$,若积分$integral_(-oo)^(+oo)integral_(-oo)^(+oo)g(x,y)f(x,y)dd(x)dd(y)$绝对收敛，则定义$ E[(g(X,Y))] eq^(Z=g(X,Y))E Z=integral_(-oo)^(+oo)integral_(-oo)^(+oo)g(x,y)f(x,y)dd(x)dd(y) $

  ]
  subsec[两个随机变量的协方差与相关系数]
  [
    若随机变量$X,Y$的方差存在且$D X>0,D Y>0,$则称$E[(X-E X)(Y-E Y)]$为随机变量$X$与$Y$的协方差，记为$"Cov"(X,Y)$,即$ "Cov"(X,Y)=E[(X-E X)(Y-E Y)]=E(X Y)-E X dot E Y $

    其中$ E(X Y)=cases(limits(Sigma)_i limits(Sigma)_j x_i y_j P{X=x_i,Y=y_j}, integral_(-oo)^(+oo)integral_(-oo)^(+oo) x y f(x,y)dd(x)dd(y)) $

    称$rho_(X Y)="Cov"(X,Y)/(sqrt(D X)sqrt(D Y))$为随机变量$X Y$的相关系数，若$rho_(X Y)eq 0$则称$X,Y$不相关

    $
      "Cov"(X^*,Y^*)= & "Cov"((X-E X)/sqrt(D X),(Y-E Y)/sqrt(D Y))                                        \
                    = & "Cov"(X-E X,Y-E Y)/(sqrt(D X)sqrt(D Y))="Cov"(X,Y)/(sqrt(D X)sqrt(D Y))=rho_(X Y)
    $

    性质：
    - $"Cov"(X,Y)="Cov"(Y,X)$
    - $"Cov"(a X,b Y)=a b "Cov"(X,Y)$
    - $"Cov"(X_1+X_2,Y)="Cov"(X_1,Y)+"Cov"(X_2,Y)$
    - $abs(rho_(X Y))<=1$
    - $rho_(X Y)=1 arrow.double.l.r P{Y=a X+b}=1(a>0)$
    - $rho_(X Y)=-1 arrow.double.l.r P{Y=a X+b}=1(a<0)$
  ]
  section[相关性与独立性]
  subsec[独立性与不相关性的判定]
  [
    + 若$X,Y$相互独立，则对任意实数$x,y$，事件${X<=x},{Y<=y}$相互独立，$F(x,y)=F_X (x)dot F_Y (y)$

      若(X,Y)是离散型随机变量，则$X,Y$独立的充要条件是$ P{X=x_i,Y=y_j}=P{X=x_i}dot P{Y=y_j} $

      若$(X,Y)$是连续型随机变量，则$X,Y$独立的充要条件是$f(x,y)=f_X (x)dot f_Y (y)$
    + 随机变量$X,Y$不相关，指$X,Y$之间不存在线性相依性，即$rho_(X Y)=0,$充要条件为：$ rho_(X Y)=0 arrow.l.r.double"Cov"(X,Y)=0 arrow.l.r.double E(X Y)=E X dot E Y arrow.l.r.double D(X plus.minus Y)=D X+D Y $
    + 几个重要结论
      - 若$X,Y$相互独立，则不相关，反之不然
      - 若$X,Y$服从二维正态分布，则$X,Y$独立$arrow.l.r.double X,Y$不相关
      - 若$X,Y$相关，则$X,Y$不独立
    + 判断过程：

      根据协方差判断相关性$->$根据分布推断独立性
  ]
  subsec[切比雪夫不等式]
  [
    若随机变量$X$的期望$E X$和方差$D X$存在，则对任意$epsilon>0$,有$ P{abs(X-E X)>=epsilon}<= (D X)/epsilon^2 "或"P{abs(X-E X)<epsilon}>=1-(D X)/epsilon^2 $
  ]
}

#随机变量的数字特征
