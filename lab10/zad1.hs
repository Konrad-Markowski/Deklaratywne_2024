sprawdz::Int->String

sprawdz x 
       |x<0 = "Liczba mniejsza od 0"
       |x>=0 && x<=10 = "Liczba z przedzialu od 0 do 10"
       |otherwise = "Liczba wieksza od 10"


compare::Ord a=> a-> a-> Ordering

compare a b
      |a>b=GT
      |a<b=LT
      |otherwise=EQ

pierwiastki::Float->Float->Float->String

pierwiastki a b c
	  |(b*b)-4*a*c<0 = "Brak pierwiastków rzeczywistych"
	  |(b*b)-4*a*c>0 = "Dwa pierwiastki rzeczywiste"
	  |otherwise = "Jeden pierwiastek rzeczywisty"


--na kolosie trzeba będzie wyliczyć wartość pięciu wyrażeń
-- (3+4*5:4:[6,[2],3])!!lenght[2,3,4]
-- (23:4:[6,[2],3]!!lenght[2,3,4]
-- (23:[4,6,[2],3]!!lenght[2,3,4])
-- ([23,4,6,[2],3]!!lenght[2,3,4])
-- ([23,4,6,[2],3]!!3
-- [2]



--kwadrat_lista (definicja rekurencyjna)
kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)


--lista_mniejsza_o1
lista_mniejsza_o1::[Int]->[Int]
lista_mniejsza_o1 []=[]
lista_mniejsza_o1 (head:tail)=(head-1):(lista_mniejsza_o1 tail)

--lista_razy3 (definicja rekurencyjna)
razy3 x=x*3
lista_razy3::[Int]->[Int]
lista_razy3 []=[]
lista_razy3 (h:t)=(razy3 h):(lista_razy3 t)

--dlugosc_listy
dlugosc_listy::[Int]->Int
dlugosc_listy []=0
dlugosc_listy (h:t)=1+(dlugosc_listy t)