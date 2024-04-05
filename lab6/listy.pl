/*
P1

[H|T] [a,b,c]

H=a, T=[b,c]

[a] [X1,X2|T]

lista ma za mało elementów więc nie da się ich uzgodnić

P2

[[a]] [H|T]

H=[a] T=[]

listy można ze sobą uzgodnić

P4

[H|T] [[a],[b],[c]]

H=[a] T=[[b],[c]]

P5

[1,2] [X,Y|T]

X=1 Y=2 T=[]

P6

[X, f(b),c] [g(Z),Z,Y]

X=g(z)
Z=f(b)
Y=c
X=g(f(b))

P7
[f(a),Z,f(c)] [Z,b,Y]

Y=f(c) Z=b, b i f(a) nie da się uzgodnić

*/

/*
kwadrat_listy(+L1,?L2).



*/

kwadrat_listy([],[]).

%rekurencja

kwadrat_listy([H1|T1],[H2|T2]):-
H2 is H1*H1,
kwadrat_listy(T1,T2).

%podwojenie
podwojenie([],[]).

%rekurencja
podwojenie([H1|T1],[H1,H1|T2]):-podwojenie(T1,T2).


%lista_mniejsza_o_2(L1,L2) - spełniony gdy są odpowiednimi elementami listy L1 pomniejszonymi o 2

lista_mniejsza_o_2([],[]).

%rekurencja

lista_mniejsza_o_2([H1|T1],[H2|T2]):-
H2 is H1-2,
lista_mniejsza_o_2(T1,T2).

%lista_razy5(L1,L2)- spełniony, elementy L2 to elementy listy L1 pomnożone przez 5

lista_razy5([],[]).

%rekurencja

lista_razy5([H1|T1],[H2|T2]):-
H2 is H1*5,
lista_razy5(T1,T2).

%liczba_elem(L,N)- spełniony, gdy N jest liczbą elementów listy L

liczba_elem([],0).

liczba_elem([_|T1],N):-liczba_elem(T1,M), N is M+1.

%element(E,L)-spełniony, gdy E jest elementem listy L

element(E,[E|_]).
element(E,[_|T]):-element(E,T).




