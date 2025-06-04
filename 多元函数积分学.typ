#import "utils.typ": section, subsec, my_init
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


#outline()
#pagebreak()

#let 多元函数积分学 = {
  section[三重积分]
  subsec[概念]
  [
    有界函数$f(x,y,z)$是有界闭区域$Omega$上的函数，若该函数在区域内连续，则三重积分$ limits(integral.triple)_Omega f(x,y,z)dd(v) $
  ]
  subsec[性质]
  [
    + $limits(integral.triple)_Omega 1 dd(v)=V,V$为区域$Omega$的体积
    + 若函数在区域内可积，则其在该区域内有界
    + 线性
    + 设函数在区域$Omega$内可积，且$Omega_1 union Omega_2=Omega,Omega_1 inter Omega_2=emptyset$，则$ limits(integral.triple)_(Omega)f(x,y,z)dd(v)=limits(integral.triple)_(Omega_1)f(x,y,z)dd(v)+limits(integral.triple)_(Omega_2)f(x,y,z)dd(v) $
    + 若在积分区域上$f(x,y,z)<=g(x,y,z)$,则$ limits(integral.triple)_Omega f(x,y,z)dd(v)<=limits(integral.triple)_Omega g(x,y,z)dd(v) $
    + 估值定理
    + 设函数子啊积分区域上连续，$V$为区域的体积，则至少存在一点$(x_0,y_0,z_0)$使得$ limits(integral.triple)_Omega f(x,y,z)dd(v)=f(x_0,y_0,z_0)dot V $
  ]
  subsec[普通对称性与轮换对称性]
  [
    + 普通对称性

      假设$Omega$关于$x O z$面对称，则有
      $
        limits(integral.triple)_Omega f(x,y,z)dd(v)=cases(2limits(integral.triple)_Omega_1 f(x,y,z)dd(v)","f(x,y,z)=f(x,-y,z), 0 ",                  "f(x,y,z)=-f(x,-y,z))
      $$Omega_1$是$Omega$在对称面右/左边的部分
    + 轮换对称性

      直角坐标系下，若交换$x,y,z$的顺序不改变$Omega$,称该函数具有轮换对称性。
      $ limits(integral.triple)_Omega f(x,y,z) dd(x)dd(y)dd(z)=limits(integral.triple)_Omega f(y,x,z) dd(x)dd(y)dd(z) $
  ]
  subsec[计算]
  [
    + 直角坐标系
      + 先一后二（先$z$后$x,y$,也叫投影穿线法）
      + 先二后一（先$x,y$后$z$,也叫定限截面法）
    + 柱坐标系
      $ dd(v)=dd(sigma)dd(z) $
    + 球坐标系
      $ cases(x=r sin phi cos theta, y=r sin phi sin theta, z=r cos phi) $
      故$ dd(v)=r^2 sin phi dd(r)dd(phi)dd(theta) $
    + 换元法
      $
        cases(x=x(u,v,w), y=y(u,v,w), z=z(u,v,w)) arrow.double dd(v)=abs(pdv((x,y,z), (u,v,w)))
      $其中$ pdv((x,y,z), (u,v,w))=mat(
        delim: "|",
        pdv(x, u), pdv(x, v), pdv(x, w);
        pdv(y, u), pdv(y, v), pdv(y, w);
        pdv(z, u), pdv(z, v), pdv(z, w)
      )eq.not 0 $
  ]
  set math.op(limits: true)
  subsec[应用]
  [
    + 质心
      $
        macron(x)=(limits(integral.triple)_Omega x rho(x, y, z)dd(v)) / ( limits(integral.triple)_Omega rho(x, y, z)dd(v))
      $
    + 转动惯量
      $
        I_x=limits(integral.triple)_Omega (y^2+z^2)rho(x, y, z)dd(v),I_o=limits(integral.triple)_Omega (x^2+y^2+z^2)rho(x, y, z)dd(v)
      $
  ]
  section[第一类曲线积分]
  subsec[概念]
  [
    在曲线$Gamma$上有界的函数$f(x,y,z)$,定义$ integral_Gamma f(x,y,z)dd(s)=limits(lim)_(lambda arrow 0)limits(Sigma)_(i=1)^n f(xi_i,eta_i,zeta_i)Delta s_i $
  ]
  subsec[性质]
  [
    总假设$Gamma$是空间有限长分段光滑曲线
    + $ integral_Gamma dd(s)=l_Gamma $
    + 若函数在曲线上可积，则其在曲线上必有界
    + 线性
    + 积分可加性
      设$Gamma_1 union Gamma_2=Gamma,Gamma_1 inter Gamma_2=emptyset$,则
      $ integral_Gamma f(x,y,z)dd(s)=integral_Gamma_1 f(x,y,z)dd(s)+integral_Gamma_2 f(x,y,z)dd(s) $
    + 若在曲线上$f(x,y,z)<=g(x,y,z)$,则$ integral_Gamma f(x,y,z)dd(s)<=integral_Gamma g(x,y,z)dd(s) $
    + 中值定理

      设函数在曲线上连续，$l_Gamma$为曲线的长度，则至少存在一点$(x_0,y_0,z_0)$使得$ integral_Gamma f(x,y,z)dd(s)=f(x_0,y_0,z_0)dot l_Gamma $
    + 估值：

      $ m l_Gamma <= integral_Gamma f(x,y,z)dd(s)<=M l_Gamma $
  ]
  subsec[普通对称性与轮换对称性]
  [
    + 普通对称性

      假设$Gamma$关于$x O z$面对称，则有
      $
        integral_Gamma f(x,y,z)dd(s)=cases(2integral_Gamma_1 f(x,y,z)dd(s)","f(x,y,z)=f(x,-y,z), 0 ",                  "f(x,y,z)=-f(x,-y,z))
      $$Gamma_1$是$Gamma$在对称面右/左边的部分
    + 轮换对称性

      直角坐标系下，若交换$x,y,z$的顺序不改变$Gamma$,称该函数具有轮换对称性。
      $ integral_Gamma f(x,y,z) dd(s)=integral_Gamma f(y,x,z) dd(s) $
  ]
  subsec[计算]
  [
    + 平面情形
      + 若平面曲线$L$由$y=y(x),a<=x<=b$给出，则$dd(s)=sqrt(1+[y'(x)]^2)dd(x),$且$ integral_Gamma f(x,y)dd(s)=integral_a^b f(x,y(x))sqrt(1+[y'(x)]^2)dd(x) $
      + 若平面曲线$L$由参数式
        $cases(x=x(t), y=y(t)),(alpha<=x<=beta)$
        给出，则$dd(s)=sqrt([x'(t)]^2+[y'(t)]^2)dd(t),$且$ integral_Gamma f(x,y)dd(s)=integral_alpha^beta f(x(t),y(t))sqrt([x'(t)]^2+[y'(t)]^2)dd(t) $
      + 若平面曲线$L$由极坐标形式$r=r(theta),(alpha<=theta<=beta)$,则$dd(s)=sqrt([r(theta)]^2+[r'(theta)]^2)dd(theta)$且$ integral_Gamma f(x,y) dd(s)=integral_alpha^beta f(r cos theta,r sin theta)sqrt([r(theta)]^2+[r'(theta)]^2)dd(theta) $

    + 空间情形
      若空间曲线由参数式$cases(x=x(t), y=y(t), z=z(t)),(alpha<=t<=beta)$给出，则$ dd(s)=sqrt([x'(t)]^2+[y'(t)]^2+[z'(t)]^2)dd(t), $且$ integral_Gamma f(x,y,z)dd(s)=integral_alpha^beta f(x(t),y(t),z(t))sqrt([x'(t)]^2+[y'(t)]^2+[z'(t)]^2)dd(t) $
  ]
  subsec[应用]
  [
    + 弧长计算
    + 曲线质心计算
      $
        macron(x)=(integral_Gamma x rho(x, y, z) dd(s)) / (integral_Gamma dd(s))
      $
    + 曲线转动惯量计算
      $
        I_x=integral_Gamma (y^2+z^2)rho(x, y, z) dd(s),I_o=integral_Gamma (x^2+y^2+z^2)rho(x, y, z) dd(s)
      $
  ]
  section[第一类曲面积分]
  subsec[概念]
  [
    光滑曲面$Sigma$上的有界函数$f(x,y,z),$定义第一类曲面积分为$ limits(integral.double)_Sigma f(x,y,z)dd(S)=limits(lim)_(lambda->0)limits(Sigma)_(i=1)^n f(xi_i,eta_i,zeta_i)Delta S $
  ]
  subsec[性质]
  [
    + $ limits(integral.double)_Sigma dd(S)=S_Sigma, $其中$S_Sigma$为曲面的面积
    + 若函数在曲面上可积，则其在曲面上必有界
    + 线性
    + 积分可加性
      设$Sigma_1 union Sigma_2=Sigma,Sigma_1 inter Sigma_2=emptyset$,则
      $
        limits(integral.double)_Sigma f(x,y,z)dd(S)=limits(integral.double)_Sigma_1 f(x,y,z)dd(S)+limits(integral.double)_Sigma_2 f(x,y,z)dd(S)
      $
    + 若在曲面上$f(x,y,z)<=g(x,y,z)$,则$ limits(integral.double)_Sigma f(x,y,z)dd(S)<=limits(integral.double)_Sigma g(x,y,z)dd(S) $
    + 中值定理

      设函数在曲面上连续，$S_Sigma$为曲面的面积，则至少存在一点$(x_0,y_0,z_0)$使得$ limits(integral.double)_Sigma f(x,y,z)dd(S)=f(x_0,y_0,z_0)dot S_Sigma $
  ]
  subsec[普通对称性与轮换对称性]
  [
    + 普通对称性

      假设$Sigma$关于$x O z$面对称，则有
      $
        limits(integral.double)_Sigma f(x,y,z)dd(S)=cases(2limits(integral.double)_Sigma_1 f(x,y,z)dd(S)","f(x,y,z)=f(x,-y,z), 0 ",                  "f(x,y,z)=-f(x,-y,z))
      $$Sigma_1$是$Sigma$在对称面右/左边的部分
    + 轮换对称性

      直角坐标系下，若交换$x,y,z$的顺序不改变$Sigma$,称该函数具有轮换对称性。
      $ limits(integral.double)_Sigma f(x,y,z) dd(S)=limits(integral.double)_Sigma f(y,x,z) dd(S) $
  ]
  subsec[计算]
  [
    投影，带入，计算
  ]
  subsec[应用]
  [
    + 曲面面积计算
    + 曲面质心计算
      $
        macron(x)=(limits(integral.double)_Sigma x rho(x, y, z) dd(S)) / (limits(integral.double)_Sigma rho(x, y, z) dd(S))
      $
    + 曲面转动惯量计算
      $
        I_x=limits(integral.double)_Sigma (y^2+z^2)rho(x, y, z) dd(S),I_o=limits(integral.double)_Sigma (x^2+y^2+z^2)rho(x, y, z) dd(S)
      $
  ]
  section[平面第二类曲线积分]
  subsec[概念]
  [
    有向曲线$L$上的函数$bold(F)(x,y)=P(x,y)bold(i)+Q(x,y)bold(j)$,定义第二类曲线积分为$ integral_L bold(F)(x,y) dot dd(bold(s))=integral_L P(x,y)dd(x)+Q(x,y)dd(y) $
  ]
  subsec[性质]
  [
    + 线性
    + 有向性$ integral_(A B)bold(F)(x,y)dot bold(dd(s))=-integral_(B A)bold(F)(x,y)dot dd(bold(s)) $
  ]
  subsec[计算]
  [
    + 基本方法————化为定积分

      若平面有向曲线$L$由参数方程$cases(x=x(t), y=y(t)),(t:alpha->beta)$，则
      $ integral_L bold(F)(x,y) dot dd(bold(s))=integral_alpha^beta (P(x(t),y(t))x'(t)+Q(x(t),y(t))y'(t))dd(t) $

      若方程由$y=y(x),x:a->b$给出，则$ integral_L bold(F)dot dd(bold(s))=integral_a^b {P[x,y(x)]+Q[x,y(x)]y'(x)}dd(x) $

    + 格林公式

      设平面有界区域$D$由分段光滑曲线$L$围成，$P(x,y),Q(x,y)$在$D$上由一阶连续偏导数，$L$取正向，则$ integral.cont_L P(x,y)dd(x)+Q(x,y)dd(y)=integral.double_D (pdv(Q, x)-pdv(P, y))dd(sigma) $
      + 若曲线封闭且内部无奇点，直接用格林公式
      + 若非封闭且$pdv(Q, x)eq.not pdv(P, y)$,可补线使其封闭
      + 若曲线封闭但内部有奇点，且除奇点外$pdv(Q, x)eq.triple pdv(P, y)$,则换路径$ integral.cont_L P dd(x)+Q dd(y)eq integral.cont_L_1 P dd(x)+Q dd(y) $$L_1$在$D$内部且与$L$方向相同

    + 平面曲线积分与路径无关

      设$P(x,y),Q(x,y)$在单连通区域$G$内具有一阶连续偏导数，则曲线积分$integral_L P dd(x)+Q dd(y)$在$G$内与路径无关的充要条件是在$G$内处处有$ pdv(P, y)=pdv(Q, x) $或在$G$内存在函数$u(x,y),dd(u)=P dd(x)+Q dd(y)$
  ]
  section[第二类曲面积分]
  subsec[通量]
  [
    向量函数$bold(F)(x,y,z)$通过曲面$Sigma$的通量为$ limits(integral.double)_Sigma bold(F)dot dd(bold(S))=limits(integral.double)_Sigma bold(F)dot bold(n)degree dd(S)=limits(integral.double)_Sigma P(x,y,z)dd(y, z)+Q(x,y,z)dd(x, z)+R(x,y,z)dd(x, y) $

    第二类曲面积分定义为光滑空间有向曲面$Sigma$上向量函数$bold(F)=P(x,y,z)bold(i)+Q(x,y,z)bold(j)+R(x,y,z)bold(k)$的通量
  ]
  subsec[性质]
  [
    + 线性
    + 有向性$ limits(integral.double)_(Sigma^+) bold(F)dot dd(bold(S)) =-limits(integral.double)_(Sigma^-) bold(F)dot dd(bold(S)) $
    + 可加性
      设$Sigma_1 union Sigma_2=Sigma,Sigma_1 inter Sigma_2=emptyset$,则
      $
        limits(integral.double)_Sigma bold(F)dot dd(bold(S))=limits(integral.double)_Sigma_1 bold(F)dot dd(bold(S))+limits(integral.double)_Sigma_2 bold(F)dot dd(bold(S))
      $
  ]
  subsec[计算]
  [
    + 基本方法————化为二重积分：拆成三个二重积分，分别投影到相应坐标面上
    + 投影转换法
      + 正向单位法向量求法
        $
          bold(n)="\""plus.minus"\""1 / sqrt(1+(pdv(z, x))^2+(pdv(z, y))^2)(-pdv(z, x),-pdv(z, y),1)
        $上侧为正时取$+$,下侧为正时取$-$
      + 转换投影定理

        设曲面$Sigma:z=z(x,y),z$具有一阶连续偏导数，且$P(x,y,z),Q(x,y,z),R(x,y,z)$在$Sigma$上连续，则$ limits(integral.double)_Sigma P(x,y,z)dd(y, z)+Q(x,y,z)dd(z, x)+R(x,y,z)dd(x, y)=\" plus.minus \"limits(integral.double)_D (-P pdv(z, x)-Q pdv(z, y)+R)dd(x, y), $其中$P=P[x,y,z(x,y)],Q=Q[x,y,z(x,y)],R=R[x,y,z(x,y)]$
    + 高斯公式

      设有向分片光滑封闭曲面$Sigma$是有界区域$Omega$的边界，$bold(F)(x,y,z)=P(x,y,z)bold(i)+Q(x,y,z)bold(j)+R(x,y,z)bold(k)$在$Omega$内具有一阶连续偏导数，则$ limits(integral.surf)_Sigma P dd(y, z)+Q dd(z, x)+R dd(x, y)=limits(integral.triple)_Omega (pdv(P, x)+pdv(Q, y)+pdv(R, z))dd(v) $

      若非封闭曲面且$div bold(F)=pdv(P, x)+pdv(Q, y)+pdv(R, z)eq.not 0,$补面使其封闭

      若封闭曲面且内部有奇点，且除奇点外$div bold(F)eq 0,$则换路径$ limits(integral.double)_Sigma P dd(y, z)+Q dd(z, x)+R dd(x, y)eq limits(integral.double)_Sigma_1 P dd(y, z)+Q dd(z, x)+R dd(x, y) $$Sigma_1$在$Omega$内部且与$Sigma$方向相同
  ]
  section[空间第二类曲线积分]
  [
    + 一投二代三计算
    + 斯托克斯公式
      设$Omega$为空间区域，$Sigma$是$Omega$内的分片光滑有向曲面，$Gamma$为逐段光滑的$Sigma$的边界，方向与$Sigma$成右手系，函数$P(x,y,z),Q(x,y,z),R(x,y,z)$在$Omega$内有连续的一阶偏导数，则有斯托克斯公式：$ integral.cont_Gamma P dd(x)+Q dd(y)+R dd(z)=limits(integral.double)_Sigma mat(delim: "|", dd(y, z), dd(z, x), dd(x, y); pdv(, x), pdv(, y), pdv(, z); P, Q, R)=limits(integral.double)_Sigma mat(delim: "|", cos alpha, cos beta, cos gamma; pdv(, x), pdv(, y), pdv(, z); P, Q, R)dd(S), $其中$bold(n)degree=(cos alpha,cos beta,cos gamma)$为$Gamma$的单位法向量。
  ]
}


#多元函数积分学
