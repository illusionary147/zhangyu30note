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


#let 多元函数积分学预备知识 = {
  section[向量代数]
  subsec[向量运算]
  [
    + $arrow(a) dot arrow(b)=abs(arrow(a))dot abs(arrow(b))cos theta$
    + $P r j_arrow(b) arrow(a)=(arrow(a)dot arrow(b)) / abs(arrow(b)),arrow(a)$在$arrow(b)$上的投影
    + $
        arrow(a) times arrow(b)=mat(delim: "|", arrow(i), arrow(j), arrow(k); a_x, a_y, a_z; b_x, b_y, b_z),
      $其中$abs(arrow(a)times arrow(b))=abs(arrow(a))dot abs(arrow(b))sin theta$
    + $arrow(a) parallel arrow(b) arrow.l.r.double theta =0 \/ pi arrow.l.r.double a_x / b_x = a_y / b_y = a_z / b_z$
    + $
        [arrow(a)arrow(b)arrow(c)]=(arrow(a)times arrow(b))dot arrow(c)=mat(delim: "|", a_x, a_y, a_z; b_x, b_y, b_z; c_x, c_y, c_z)"，称为混合积"
      $
    + 若混合积为0，则称向量$arrow(a),arrow(b),arrow(c)$共面
  ]
  subsec[向量方向角和方向余弦]
  [
    + 非零向量$arrow(a)$与$x,y,z$三轴正方向的夹角$alpha ,beta,gamma$称为$arrow(a)$的方向角
    + 方向余弦$cos alpha,cos beta,cos gamma$分别定义为$arrow(a)$与$x,y,z$三轴正方向的夹角的余弦，且$cos alpha = a_x / abs(arrow(a)),cos beta = a_y / abs(arrow(a)),cos gamma=a_z / abs(arrow(a))$
    + $arrow(a)degree=arrow(a) / abs(arrow(a))=(cos alpha,cos beta,cos gamma)$
    + 任意向量$arrow(r)=x arrow(i)+y arrow(j)+z arrow(k)=r(cos alpha,cos beta,cos gamma),r=sqrt(x^2+y^2+z^2)$
  ]
  section[平面与直线]
  subsec[平面方程]
  [
    设平面法向量$arrow(n)=(A,B,C)$
    + 一般式：
      $A x+B y+C z+D=0$
    + 点法式：
      $A(x-x_0)+B(y-y_0)+C(z-z_0)=0$,其中$(x_0,y_0,z_0)$为平面上一点
    + 三点式
      $ mat(delim: "|", x-x_1, y-y_1, z-z_1; x-x_2, y-y_2, z-z_2; x-x_3, y-y_3, z-z_3)=0 $
      $P_i (x_i,y_i,z_i)i=1,2,3$为平面上不共线的三点
    + 截距式：
      $x / a + y / b + z / c = 1$,其中$(a,b,c)$为平面在$x,y,z$轴上的截距
    + 平面束方程：
      设$pi_i:A_i x +B_i y +C_i z+D_i=0,i=1,2.A_1,B_1,C_1$与$A_2,B_2,C_2$不成比例,则过$L:cases(A_1 x+B_1y+C_1z+D_1=0, A_2x+B_2y+C_2z+D_2=0)$的平面束方程为:$ (A_1 x+B_1y+C_1z+D_1) + lambda (A_2x+B_2y+C_2z+D_2) = 0，("不含"pi_2) $或$ lambda (A_1 x+B_1y+C_1z+D_1) + (A_2x+B_2y+C_2z+D_2) = 0,"不含"pi_1 $
  ]
  subsec[直线方程]
  [
    设直线方向向量为$arrow(tau)=(l,m,n)$
    + 一般式：
      $
        cases(
          A_1 x + B_1 y + C_1 z + D_1 = 0,
          A_2 x + B_2 y + C_2 z + D_2 = 0
        )
      $
      两平面$pi_1,pi_2$相交的直线方程，要求两平面不平行，其中直线方向向量$arrow(tau) = arrow(n)_1 times arrow(n)_2 = (A_1, B_1, C_1) times (A_2, B_2, C_2)$
    + 点向式：
      $ (x - x_0) / l = (y - y_0) / m = (z - z_0) / n $
      其中$(x_0, y_0, z_0)$为直线上一点
    + 参数式：
      $
        cases(
          x = x_0 + l t,
          y = y_0 + m t,
          z = z_0 + n t
        )
      $
    + 两点式：
      $ (x - x_1) / (x_2 - x_1) = (y - y_1) / (y_2 - y_1) = (z - z_1) / (z_2 - z_1) $
      或者参数式表示：
      $
        cases(
          x = x_1 + t(x_2 - x_1),
          y = y_1 + t(y_2 - y_1),
          z = z_1 + t(z_2 - z_1)
        )
      $
      其中$(x_1, y_1, z_1)$和$(x_2, y_2, z_2)$为直线上两点
  ]
  subsec[位置关系]
  [
    + 点到直线的距离：
      点$M_1(x_1,y_1,z_1)$到直线$L:(x - x_0) / l = (y - y_0) / m = (z - z_0) / n$的距离为$ d=abs(arrow(tau)times arrow(M_1 M_0)) / abs(arrow(tau))=abs(mat(delim: "|", arrow(i), arrow(j), arrow(k); l, m, n; x_0-x_1, y_0-y_1, z_0-z_1)) / sqrt(l^2+m^2+n^2) $
      其中$arrow(M_1 M_0)=(x_0-x_1,y_0-y_1,z_0-z_1)$
    + 点到平面的距离：
      点$M_0(x_0,y_0,z_0)$到平面$pi:A x + B y + C z + D = 0$的距离为$ d=abs(A x_0+B y_0+C z_0+D) / sqrt(A^2+B^2+C^2) $
    + 直线$L$与平面$pi$的夹角$theta=arcsin abs(arrow(tau)dot arrow(n)) / (abs(arrow(tau))abs(arrow(n)))$,其中$theta=abs(pi / 2 - <arrow(tau) "," arrow(n)>)$
  ]
  section[空间曲线与曲面]
  subsec[空间曲线]
  [
    + 一般式$Gamma:cases(F(x,y,z)=0, G(x,y,z)=0)$
    + 参数式$Gamma:cases(x=x(t), y=y(t), z=z(t))$
    + 在坐标面上的投影
      带入$x=0,y=0,z=0$其中之一消元得到投影的方程
  ]
  subsec[空间曲面]
  [
    + 曲面方程:F(x,y,z)=0
    + 二次曲面
    + 柱面
    + 旋转曲面
  ]

  section[多元函数微分学几何应用]
  subsec[空间曲线的切线和法平面]
  [
    + 用参数方程给出曲线$ cases(x=x(t), y=y(t), z=z(t)),t in I, $
      其中$x(t),y(t),z(t)$在$I$上可导，且三个导数不同时为0，则曲线在$P_0 (x_0,y_0,z_0)$处切向量$bold(tau)=(x'(t_0),y'(t_0),z'(t_0))$

      切线方程:$(x-x_0) / (x'(t_0)) = (y-y_0) / (y'(t_0))=(z-z_0) / (z'(t_0))$

      法平面方程:$x'(t_0)(x-x_0)+y'(t_0)(y-y_0)+z'(t_0)(z-z_0)=0$
    + 用方程组给出曲线$ cases(F(x,y,z)=0, G(x,y,z)=0) $
      当$ pdv((F,G), (y,z))=mat(delim: "|", pdv(F, y), pdv(F, z); pdv(G, y), pdv(G, z))eq.not 0 $
      时，可确定$cases(x=x, y=y(x), z=z(x))$,

      其在$P_0(x_0,y_0,z_0)$处的切向量$ bold(tau)=mat(delim: "|", bold(i), bold(j), bold(k); F'_x, F'_y, F'_z; G'_x, G'_y, G'_z)_P_0=(A,B,C) $

      切线方程$(x-x_0) / A=(y-y_0) / B=(z-z_0) / C$

      法平面方程$A(x-x_0)+B(y-y_0)+C(z-z_0)=0$
  ]
  subsec[空间曲面的切平面与法线]
  [
    + 用隐式方程给出曲面$F(x,y,z)=0,F$的一阶偏导数连续

      - 其在点$P_0(x_0,y_0,z_0)$处的法向量$bold(n)=(F'_x,F'_y,F'_z)bar.v_P_0$

      - 切平面方程$F'_x bar_P_0 dot (x-x_0)+F'_y bar_P_0 dot (y-y_0)+F'_z bar_P_0 dot (z-z_0)=0$

      - 法线方程: $ (x-x_0) / (F'_x bar_P_0) = (y-y_0) / (F'_y bar_P_0) = (z-z_0) / (F'_z bar_P_0) $
    + 用显示函数给出的曲面$z=f(x,y),f$的一阶偏导数连续
      - 其在点$P_0(x_0,y_0,z_0)$处的法向量$bold(n)=(f'_x,f'_y,-1)bar.v_P_0$,此法向量方向向下
      - 切平面方程$f'_x bar_P_0 dot (x-x_0)+f'_y bar_P_0 dot (y-y_0)-(z-z_0)=0$
      - 法线方程: $ (x-x_0) / (f'_x bar_P_0) = (y-y_0) / (f'_y bar_P_0) = (z-z_0) / (-1) $
  ]
  section[场论初步]
  subsec[方向导数]
  [
    + 定义

      设三元函数$u=u(x,y,z)$在$P_0(x_0,y_0,z_0)$的某空间邻域内有定义，$l$为从点$P_0$发出的射线，$P(x,y,z)in l$是邻域内任一点，则$ cases(x-x_0=Delta x=t cos alpha, y-y_0=Delta y =t cos beta, z-z_0=Delta z=t cos gamma), $以$t=sqrt((Delta x)^2+(Delta y)^2+(Delta z)^2)$表示$P 和 P_0$之间的距离，若极限$ lim_(t arrow 0^+) (u(P)-u(P_0)) / t=lim_(t arrow 0^+)(u(x_0+t cos alpha,y_0+t cos beta,z_0+t cos gamma)-u(x_0,y_0,z_0)) / t $存在，则称此极限为函数在点$P_0$沿射线$l$的方向导数，记为$pdv(u, bold(l))bar_P_0$
    + 定理

      设三元函数$u=u(x,y,z)$在点$P_0(x_0,y_0,z_0)$处可微，则函数在该点处沿任意方向$bold(l)$的方向导数都存在，且$ pdv(u, bold(l))bar_P_0=u'_x (P_0)cos alpha+u'_y (P_0)cos beta+u'(z) (P_0)cos gamma $其中$cos alpha,cos beta,cos gamma$为方向$bold(l)$的方向余弦
  ]
  subsec[梯度]
  [
    设三元函数$u=u(x,y,z)$在点$P_0(x_0,y_0,z_0)$处具有一阶连续偏导数，则定义$ grad u bar_P_0=(u'_x (P_0),u'_y (P_0),u'_z (P_0)) $为在点$P_0$处的梯度.
  ]

  subsec[方向导数与梯度]
  [
    $
      pdv(u, bold(l))bar_P_0=grad u bar_P_0 dot bold(l) degree=abs(grad u bar_P_0) abs(bold(l) degree)cos theta=abs(grad u bar_P_0)cos theta
    $
    $theta$为$grad u bar_P_0$与$bold(l)degree$的夹角

    方向导数是标量，梯度是向量，梯度的方向是函数在该点处增长最快的方向，梯度的模长是函数在该点沿梯度方向的最大增长率。
    $ abs(grad u)=sqrt((u'_x)^2+(u'_y)^2+(u'_z)^2) $
  ]
  subsec[散度]
  [
    设向量场$bold(A)(x,y,z)=P(x,y,z)bold(i)+Q(x,y,z)bold(j)+R(x,y,z)bold(k)$,则$ div bold(A)=pdv(A, x)+pdv(B, y)+pdv(R, z) $叫做向量场$bold(A)$的散度。
  ]
  subsec[旋度]
  [
    设向量场$bold(A)(x,y,z)=P(x,y,z)bold(i)+Q(x,y,z)bold(j)+R(x,y,z)bold(k)$,则$ curl bold(A)=mat(delim: "|", bold(i), bold(j), bold(k); pdv(, x), pdv(, y), pdv(, z); P, Q, R) $叫做向量场$bold(A)$的旋度。
  ]
}

#多元函数积分学预备知识
