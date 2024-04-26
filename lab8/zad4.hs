ob_kuli1 r=4/3*pi*r*r*r




ob_kuli2 r=a*pi*sz
	   where a=4/3
		 sz=r*r*r


ob_kuli3 r=a*pi*(sz r)
	   where a=4/3
		 sz r=r*r*r


ob_kuli4 r=let a=4/3
	       sz=r*r*r
           in  a*pi*sz


pole_kola1 r=pi*r*r 

pole_kola2 r=pi*rkw
		where rkw=r*r

pole_kola3 r=pi*(kw r)
		 where kw r=r*r

pole_kola4 r= let rkw=r*r
	      in pi*rkw

--Pole_p
 
pole_p1 a b h=(2*a*b)+(2*a*h)+(2*b*h)
