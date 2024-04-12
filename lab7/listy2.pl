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