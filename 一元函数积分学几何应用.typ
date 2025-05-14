#import "utils.typ": section, subsec

#set text(font: "SimSun")
#set par(first-line-indent: (amount: 2em, all: true))
#set page(margin: (x: 40pt))
#set enum(indent: 3em)

#show math.equation: it => {
  show regex("\p{script=Han}"): set text(font: "SimSun")
  it
}

#outline()
#pagebreak()
#section[表达与计算图形面积]

#subsec[曲线$y=y_1(x)"与"y=y_2(x)$及$x=a,x=b(a<b)$围成的面积]
$ S=integral_a^b abs(y_1(x)-y_2(x)) dif x $

#subsec[曲线$r=r_1(theta)"与"r=r_2(theta)"与射线"theta=alpha,theta=beta(0<beta-alpha<=2 pi)$所围成的曲边扇形面积]
$ S=1 / 2 integral_alpha^beta abs(r_1^2(theta)-r_2^2(theta)) dif theta $
$
  Delta S=1 / 2 r_2(theta)dot r_2(theta)dif theta-1 / 2r_1(theta)dot r_1(theta)dif theta=1 / 2 abs(r^2_2(theta)-r_1^2(theta))dif theta
$

#section[表达和计算旋转体体积]

#subsec[曲线$y=y(x)$及$x=a,x=b(a<b)$围成的区域绕$x$轴旋转所成的旋转体体积]
$ V_x=integral_a^b pi y^2(x)dif x $

#subsec[曲线$y=y(x)$及$x=a,x=b(a<b)$围成的区域绕$y$轴旋转所成的旋转体体积]
$ V_y=2 pi integral_a^b x abs(y)dif x $

#subsec[平面曲线绕定直线旋转]
平面曲线$L:y=f(x),a<=x<=b,$且$f(x)$可导

定直线$L_0:A x +B y+C=0$且过$L_0$的任意一条垂线与$L$至多有一个交点
$ V=pi / (A^2+B^2)^(3 / 2) integral_a^b [A x+B f(x)+C]^2 abs(A f'(x)-B)dif x $

#section[用定积分表达和计算函数平均值]
设$x in [a,b]$，函数$y=f(x)在[a,b]$上的平均值为$macron(y)=1 / (b-a) integral_a^b y(x)dif x arrow.double macron(y)=y(xi),xi in [a,b]$


#section[其他几何应用]

#subsec[曲边梯形形心]
$ macron(x)=(integral_a^b x f(x)dif x) / (integral_a^b f(x)dif x) $
$ macron(y)=(integral_a^b f^2(x)dif x) / (integral_a^b f(x)dif x) $

#subsec[平面曲线的弧长]
+ 直角坐标$y=y(x)(a<=x<=b)$
  $ s=integral_a^b sqrt(1+[y'(x)]^2)dif x $

+ 极坐标$r=r(theta)(alpha<=theta<=beta)$
  $ s=integral_alpha^beta sqrt([r(theta)]^2+[r'(theta)]^2) dif theta $

+ 参数方程$x=x(t),y=y(t)(t_0<=t<=t_1)$
  $ s=integral_(t_0)^(t_1) sqrt([x'(t)]^2+[y'(t)]^2)dif t $

#subsec[旋转曲面的侧面积]
+ 直角坐标$y=y(x)(a<=x<=b)$
  $ S=2 pi integral_a^b abs(y)sqrt(1+[y'_x]^2)dif x $
+ 极坐标$r=r(theta)(alpha<=theta<=beta)$
  $ S=2 pi integral_alpha^beta abs(r^2(theta)sin theta)sqrt(r^2 (theta)+[r'(theta)]^2) dif theta $
+ 参数方程$x=x(t),y=y(t)(t_0<=t<=t_1)$
  $ S=2 pi integral_(t_0)^(t_1) abs(y(t))sqrt([x'(t)]^2+[y'(t)]^2)dif t $
