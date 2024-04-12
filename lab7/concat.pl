/*
konkat(L1,L2,L3)- spełniony, gdy L3 jest konkatenacją list L1 i L2
np. [1,2] [3,4] L3=[1,2,3,4]
*/

%konkat(L1, L2, L3):-append(L1,L2,L), L=L3.

konkat([], L, L).
konkat([H|L1],L2,[H|L3]):-konkat(L1,L2,L3).

/*
odwrotna_lista([],[]).
*/
odwrotna_lista([],[]).
odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2), konkat(T2,[H],L).
