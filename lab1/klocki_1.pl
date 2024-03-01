/*
PROGRAM: klocki_1
Jest to baza widzy o układzie klocków
na(X,Y)
opis: spełniony, gdy klocek X leży bezpośrednio na klocku Y
*/

na(c,a).
na(c,b).
na(d,c).

/*
Informacje o budowe programu:
Program składa się z 3 klauzul.
Program zawiera 1 definicję relacji.
Jest to relacja na/2.
Definicja relacji na/2 składa się z 

*/

pod(X,Y):-na(Y,X).

%reguły czytamy na odwrót (od prawej do lewej)

/*
Klocek X leży bezpośrednio pod klockiem Y
*/

miedzy(X,Y,Z):-na(X,Y), pod(X,Z).
miedzy(X,Y,Z):-na(X,Z), pod(X,Y).

% alternatywny sposób: miedzy(X,Y,Z):-na(X,Y), na(Z,X).
%                      miedzy(X,Y,Z):- na(X,Z), na(Y,X).

/*
Klocek X leży pomiędzy klockami Y i Z
*/

