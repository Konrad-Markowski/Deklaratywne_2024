abs::Float->Float
abs x=if x<0 then (-x) else x

min1::Float->Float->Float
min1 x y=if x<y then x else y

abs2 x
    |x<0=(-x)
    |otherwise=x

sgn::Float->Float
sgn x=if x>0 then 1 else if x==0 then 0 else (-1)

sgn2 x
   |x>0=1
   |x<0=(-1)
   |otherwise=0
   
--case of

albo_albo1::(Bool, Bool)->Bool
albo_albo1 (p,q)=case(p,q) of (False,False)->False
			      (True,False)->True
                              (False,True)->True
                              (True,True)->False

albo_albo2::(Bool, Bool)->Bool
albo_albo2 (p,q)=if p==q then False else True

--albo_albo3


albo_albo4::(Bool, Bool)->Bool
albo_albo4 (p,q)= if (p==True && q==False)||(p==False && q==True) then True else False

--rownowaznosc logiczna
rown_log1::(Bool, Bool)->Bool
rown_log1 (p,q)=case (p,q) of (False, False)->True
			      (True, False)->False
			      (False, True)->False
			      (True, True)->True


rown_log2::(Bool, Bool)->Bool
rown_log2 (p,q)=if p==q then True else False


rown_log3::(Bool, Bool)->Bool
rown_log3 (p,q)
	|p==q=True
	|otherwise=False

rown_log4::(Bool, Bool)->Bool
rown_log4 (p,q)= (p && q)||(not p && not q)


--rozmiar :: Integer --Haskell
rozmiar=5

compare:: Ord a=> a-> a-> Ordering

compare a b
      |a>b=GT
      |a<b=LT
      |otherwise=EQ

compare2:: Ord a=> a-> a-> Ordering
compare2 a b= if a>b then GT else if a<b then LT else EQ







