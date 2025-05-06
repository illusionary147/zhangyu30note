#import "@preview/physica:0.9.5": *
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

#section[基本概念]
#subsec[邻域]
$delta$邻域：$ U(P_0,delta)={P bar abs(P P_0)<delta}"或"U(P_0,delta)={(x,y) bar sqrt((x-x_0)^2+(y-y_0)^2)<delta} $

去心$delta$邻域：$ circle(U)(P_0,delta)={P_0 bar 0<abs(P P_0)<delta} $
点$P_0$的去心邻域记为$circle(U)(P_0)$，不强调邻域半径

#subsec[极限]
设函数$f(x,y)$在区域$D$有定义，$P_0(x_0,y_0)in D$或为区域$D$边界上的一点，如果对于任意给定的$epsilon>0,"当点"P(x,y)in D$且满足$0<abs(P P_0)=sqrt((X-X_0)^2+(Y-Y_0)^2)<delta$时恒有$ abs(f(x,y)-A)<epsilon $
则称常数$A$为函数$f(x,y)$在点$P_0$的极限，记作：$ lim_((x,y)arrow (x_0,y_0))f(x,y)=A 或 lim_(x -> x_0,\ y-> y_0 )f(x,y)=A $也记作$ lim_(P->P_0)f(P)=A $

多元函数极限有无数种趋近路径。

#subsec[连续]
若函数$limits(lim)_(x arrow x_0\ y arrow y_0)f(x,y)=f(x_0,y_0)$,则称函数$f(x,y)$在点$(x_0,y_0)$上连续，如果$f(x,y)$在区域$D$内的每一点上都连续，则称函数$f(x,y)$在区域$D$上连续。

#subsec[偏导数]
+ 定义\

  设函数$z=f(x,y)$在点$(x_0,y_0)$的某邻域内有定义，若极限$ lim_(Delta x arrow 0)(f(x_0+Delta,y_0)-f(x_0,y_0)) / (Delta x) $存在，则称此极限为函数$z=f(x,y)$在点$(x_0,y_0)$处对$x$的偏导数，记作$ evaluated((diff z) / (diff x))_(x=x_0\ y=y_0) , evaluated((diff f) / (diff x))_(x=x_0\ y=y_0),或 f'_x (x_0,y_0) $即$ f'_x (x,y)=lim_(Delta x arrow 0) (f(Delta x +x_0,y_0)-f(x_0,y_0)) / (Delta x) $
+ 高阶偏导数\

  若二元函数$z=f(x,y)$的偏导数$f'_x (x,y),f'_y (x,y)$仍具有偏导数，则称它们的偏导数称为$z=f(x,y)$的二阶导数，记作$ pdv(z, x, [2])=partial / (partial x) ((partial z) / (partial x))=f''_(x x)(x,y)=z''_(x x) $
  $ pdv(z, x, y)=partial / (partial y) ((partial z) / (partial x))=f''_(x y)(x,y)=z''_(x y) $
  $ pdv(z, y, [2])=partial / (partial y) ((partial z) / (partial y))=f''_(y y)(x,y)=z''_(y y) $
  $ pdv(z, y, x)=partial / (partial x) ((partial z) / (partial y))=f''_(y x)(x,y)=z''_(y x) $

  若函数$z=f(x,y)$的两个二阶混合偏导数都在区域$D$内连续，则它们是相等的。

#subsec[可微]
+ 定义\

  设函数$z=f(x,y)$在点$(x_0,y_0)$的某实心邻域内有定义，若$z=f(x,y)$在该点全增量$ Delta z=f(x_0+Delta x,y_0+Delta y)-f(x_0,y_0) $可表示为$ Delta z=A Delta x+B Delta y+o(rho), $其中$A,B$仅与$(x_0,y_0)$有关，$o(rho)$是$Delta x arrow 0,Delta y arrow 0$时$rho=sqrt((Delta x)^2+(Delta y)^2)$的高阶无穷小,则称函数$z=f(x,y)$在点$(x_0,y_0)$处可微分，并称$A Delta x+B Delta y$为函数$z=f(x,y)$在点$(x_0,y_0)$处的全微分，记为$ dif z=A Delta x+B Delta y=A dif x+B dif y $

+ 可微的必要条件\

  设函数$z=f(x,y)$在点$(x_0,y_0)$可微，则函数在该点处偏导数一定存在，且$ A=pdv(z, x),B=pdv(z, y) $可知若函数在$(x_0,y_0)$可微，则全微分可记为$ dif z=pdv(z, x) dif x+pdv(z, y) dif y $

+ 可微的充分条件\

  若函数$z=f(x,y)$在点$(x,y)$处偏导数存在且连续，则称该函数在点$(x,y)$处可微。

+ 可微判别\

  + 写出全增量$Delta z=f(x_0+Delta x,y_0+Delta y)$;
  + 写出线性增量$A Delta x+B Delta y$,其中$A=f'_x (x_0,y_0),B=f'_y (x_0,y_0);$
  + 做极限$limits(lim)_(Delta x arrow 0\ Delta y arrow 0)(Delta z-(A Delta x + B Delta y)) / (sqrt((Delta x)^2+(Delta y)^2))$,若极限等于零，则函数在$(x_0,y_0)$处可微，反之不可微。


#section[多元函数微分]
#subsec[链式法则]

#subsec[全微分不变性]
设函数$z=f(u,v),u=u(x,y),v=v(x,y)$,若$f(u,v),u(x,y),v(x,y)$分别有连续偏导数，则复合函数$z=f(u,v)$在$(x,y)$处的全微分可表示为$ dif z=pdv(z, u)dif u+pdv(z, v)dif v $

#subsec[隐函数存在定理（公式法）]
+ 隐函数存在定理1\

  对于由方程$F(x,y)=0$确定的隐函数$y=f(x)$,当$F'_y (x,y)eq.not 0$时，有$ (dif y) / (dif x)=-(F'_x (x,y)) / (F'_y (x,y)) $

+ 隐函数存在定理2

  对于由方程$F(x,y,z)=0$确定的隐函数$z=f(x,y)$,当$F'_z (x,y,z)eq.not 0$时，有$ pdv(z, x)=-(F'_x (x,y,z)) / (F'_z (x,y,z)),pdv(z, y)=-(F'_x (x,y,z)) / (F'_z (x,y,z)) $

#subsec[二元函数拉格朗日定理]
设函数$f(x,y)$定义在区域$D$上，且$pdv([f(x,y)], x)=0,pdv([f(x,y)], x)=0,(x,y)in D$,则$f(x,y)=C,(x,y )in D$,$C$为常数

#section[二元函数极值]
#subsec[无条件极值]
+ 二元函数取极值的必要条件：

  设$z=f(x,y)$在点$(x_0,y_0)$处$cases("一阶偏导数存在", "取极值")$,则$f'_x (x_0,y_0)=0,f'_y (x_0,y_0)=0$

+ 二元函数取极值的充分条件：

  $
    "记"cases(f''_(x x) (x_0,y_0)=A, f''_(x y) (x_0,y_0)=B, f''_(y y)(x_0,y_0)=C), "   "则 Delta=A C-B^2 cases(>0 arrow.double cases(A<0 arrow.double "极大值", A>0 arrow.double "极小值"), <0 arrow.double "非极值", =0 arrow.double "方法失效")
  $

#subsec[条件极值与拉格朗日乘数法]
求目标函数$f(x,y,z)$在约束条件$cases(phi(x, y, z)=0, psi(x, y, z)=0),$下的最值，则
+ 构造辅助函数$F(x,y,z,lambda,mu)=f(x,y,z)+lambda phi(x, y, z)+mu psi(x, y, z)$
+ 令$ cases(
    F'_x =f'_x + lambda phi'_x +mu psi'_x =0,
    F'_y=f'_y + lambda phi'_y+mu psi'_x=0,
    F'_z=f'_z+lambda phi'_z+mu psi'_z=0,
    F'_lambda =phi(x, y, z)=0,
    F'_mu = psi(x, y, z)=0
  ) $
+ 解方程组得备选点$P_i,i=1,2,3 dots,n$，并求$f(P_i)$,最大值和最小值即为所求（边界点也可以是最值）

#subsec[最远（近）点的垂线原理]
若$Gamma$是光滑闭合曲线，点$Q$是$Gamma$外的一点，点$P_1,P_2$分别是$Gamma$上与点$Q$的距离最远和最近的点，则直线$P_1 Q,P_2 Q$分别在点$P_1,P_2$处与曲线$Gamma$在这两点处的切线垂直。

若光滑闭曲线$Gamma_1,Gamma_2$不相交，点$P_1,P_2$分别是他们之间最远（近）的点，则直线$P_1 P_2$是$Gamma_1,Gamma_2$的公垂线，即$P_1 P_2$同时垂直于$Gamma_1,Gamma_2$在$P_1,P_2$处的切线。

#subsec[有界闭区域上连续函数的最值问题]
+ 根据$f'_x (x,y),f'_y (x,y)$为$0$或不存在，求出区域$D$内的全部可疑点；
+ 用拉格朗日乘数法或代入法求出边界上的所有可疑点；
+ 比较所有可疑点的函数值，得出最大值和最小值。
