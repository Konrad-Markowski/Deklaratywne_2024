kwadrat_lista::[Int]->[Int]

kwadrat_lista xs=[x*x|x<-xs]

lista_mniejsza_o2::[Int]->[Int]

lista_mniejsza_o2 xs=[x-2|x<-xs]

lista_razy5::[Int]->[Int]

lista_razy5 xs=[x*5|x<-xs]

--użycie funkcji map

mniejszeo2 x=x-2
lista_mniejszao2_2 xs = map mniejszeo2 xs

kwadrat_lista2::[Int]->[Int]
kwadrat x=x*x
kwadrat_lista2 xs = map kwadrat xs

--do kolosa zdefinować na 3 sposoby (rekurencyjnie, z kwalifikatorem i z użyciem map)

--rekurencyjnie
lista_wiekszao1_r::[Int]->[Int]
lista_wiekszao1_r []=[]
lista_wiekszao1_r (h:t)=(h-1):(lista_wiekszao1_r t)

