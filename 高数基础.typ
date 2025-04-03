#set page(columns: 2,margin: (x:28pt,y:40pt))
#set text(font: "New Computer Modern")

#let sec(content)={
  counter("sec").step()
  set align(left)
  set text(size:17pt)
  context heading(math.section+counter("sec").display("1")+[ ]+content,numbering: none)
}
 
#let subsec(content)={
  set text(size:14pt)
  
  context heading(h(2em)+content,numbering: none,level: 2)
}

//#show heading.where(level:2) : set text(size:14pt)


//#set align(center)
#sec[多项式]
$ (root(3, a) plus.minus root(3, b))(root(3, a^2) minus.plus root(3, a b) + root(3, b^2)) = a plus.minus b $
$ (a plus.minus b)(a^2 minus.plus a b + b^2)=a plus.minus b $

#sec[不等式]
#subsec[Cauchy不等式]
$ (a_1^2+a_2^2+dots+a_n^2)(b_1^2+b_2^2+dots+b_n^2)\ >=(a_1b_1+a_2b_2+dots+a_n b_n)^2 $
#subsec[三角（绝对值）不等式]
$ abs(abs(a)-abs(b)) <= abs(a plus.minus b)<= abs(a)+abs(b) $


#sec[三角变换]
#subsec[不常见三角函数]
$ cot x = 1/(tan x) "   余切函数" $
$ sec x = 1/(cos x) "   正割函数" $
$ csc x = 1/(sin x) "   余割函数"  $


#subsec[平方关系]
$ sin^2 x + cos^2 x = 1 $
$ tan^2 x + 1 = sec^2 x $
$ 1 + cot^2 x = csc^2 x $

#subsec[和差角]
$ sin(a+b) = sin a cos b + cos a sin b $
$ sin(a-b) = sin a cos b - cos a sin b $
$ cos(a+b) = cos a cos b - sin a sin b $
$ cos(a-b) = cos a cos b + sin a sin b $
$ tan(a+b) = (tan a + tan b)/(1 - tan a tan b) $
$ tan(a-b) = (tan a - tan b)/(1 + tan a tan b) $

#subsec[二倍角]
$ sin 2a = 2 sin a cos a $
$ cos 2a &= cos^2 a - sin^2 a \ &= 2 cos^2 a - 1 \ &= 1 - 2 sin^2 a $
$ tan 2a = (2 tan a) / (1 - tan^2 a) $

#subsec[三角和差化积]
$ sin a + sin b = 2 sin((a+b)/2) cos((a-b)/2) $
$ sin a - sin b = 2 cos((a+b)/2) sin((a-b)/2) $
$ cos a + cos b = 2 cos((a+b)/2) cos((a-b)/2) $
$ cos a - cos b = -2 sin((a+b)/2) sin((a-b)/2) $

#subsec[#text(fill: red)[TODO：反三角函数]]

#sec[数列]
#subsec[等比数列求和]
$ S_n = a_1(1-q^n)/(1-q) "    " (q eq.not 1) $

#sec[坐标变换]
#subsec[二维空间坐标旋转]
原坐标为$(x,y)$，逆时针旋转角度为$a$，则新坐标为$(x',y')$，有：
$ x' = x cos a - y sin a $
$ y' = x sin a + y cos a $
旋转矩阵为：
#set math.mat(gap:1em,row-gap:1em)
$ mat(delim: "[",cos a,-sin a;sin a,cos a;) $

#text(fill:red)[#sec[对称性]]
