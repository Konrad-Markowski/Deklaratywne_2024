/*
dodatni(X)
spełniony, gdy X jest liczbą dodatnią
*/
dodatni(X):-X>0.

%lista dodatnia(L)
%spełniony gdy wszystkie elementy listy są dodatnie

lista_dodatnia(L):-maplist(dodatni,L).

% większy_od_lista(X,Y):-Y>X.

wiekszy_od(X,Y):- Y>X.

%wiekszy_od_lista(X,L) - spełniony, gdy każdy element listy L jest większy od X
wiekszy_od_lista(X,L):- maplist(wiekszy_od(X),L).

%wieksza_lista(L1,L2) - spełniony, gdy elementy L2 są większe od odpowiednich elementów L1
wieksze(X,Y):- Y>X.
wieksza_lista(L1,L2):-maplist(wieksze,L1,L2).

%razy2_lista(L1,L2)-spełniony gdy elementy L2 są odpowiednio 2 razy większe niż elementy listy L1
podwojone(X,Y):- Y is 2*X.
razy2_lista(L1,L2):-maplist(podwojone,L1,L2).

%kwadrat_lista(L1,L2)
kwadrat(X,Y):- Y is X*X.
kwadrat_lista(L1,L2):-maplist(kwadrat,L1,L2).

%lista_mniejsza_o_2(L1,L2)
mniejsze_o_2(X,Y):- Y is X-2.
lista_mniejsza_o_2(L1,L2):-maplist(mniejsze_o_2,L1,L2).