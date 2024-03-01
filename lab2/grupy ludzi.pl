/*
Grupa ludzi
lubi(X,Y) - X lubi Y
jarosz(X) - X jest jaroszem
nie_pali(X) - X nie pali papierosów
czyta(X) - X czyta książki
sport(X) - X uprawia sport
*/
	jarosz(ewa).
	jarosz(ola).
	jarosz(jan).
	jarosz(pawel).
	nie_pali(ola).
	nie_pali(ewa).
	nie_pali(jan).
	czyta(ola).
	czyta(iza).
	czyta(piotr).
	sport(ola).
	sport(jan).
	sport(piotr).
	sport(pawel).
	
	%1
	lubi(ola,X):-jarosz(X),sport(X).
	%2
	lubi(ewa,X):-nie_pali(X),jarosz(X).
	%3
	lubi(iza,X):-czyta(X).
	lubi(iza,X):-sport(X),nie_pali(X).
	%4
	lubi(jan,X):-sport(X).
	%5
	lubi(piotr,X):-sport(X),jarosz(X).
	lubi(piotr,X):-czyta(X).
	%6
	lubi(pawel,X):-jarosz(X),sport(X),czyta(X).
