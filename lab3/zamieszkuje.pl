/*
	sasiad(X,Y) - spełniony gdy X jest sąsiadem Y,
	mieszka(X,Y) - spełniony gdy X mieszka na ulicy Y
*/

mieszka(ola,dworcowa).
mieszka(piotr,dworcowa).
mieszka(karol,dworcowa).

mieszka(ania,ogrodowa).
mieszka(pawel,ogrodowa).

mieszka(kamil,irysowa).
mieszka(gosia,irysowa).

mieszka(marcin,Y):-mieszka(ola,Y).

sasiad(X,Y):-mieszka(X,Z),mieszka(Y,Z), X\==Y.
