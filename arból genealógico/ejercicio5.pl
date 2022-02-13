/**José Castro, joseacastrorosales@gmail.com.

?-Arból genealógico.

*/

% Hechos.

% Miembros de la Familia.

hombre(manuel).
hombre(carlos).
hombre(gerardo).
hombre(ramón).
hombre(contreras).
hombre(castro).
hombre(salazar).
hombre(israel).
hombre(carlitos).
hombre(fernando).
hombre(luis).
hombre(gerardito).
hombre(ramoncito).
hombre(victor).
hombre(josé).
hombre(andrés).

mujer(edilia).
mujer(dahisy).
mujer(elda).
mujer(iraida).
mujer(morelba).
mujer(irazu).
mujer(mary).
mujer(yamilet).
mujer(carlymar).
mujer(nayibett).
mujer(erika).
mujer(alondra).
mujer(dahisita).
mujer(dariana).
mujer(paola).
mujer(yrazu).

% Padres.
padre(manuel, carlos).
padre(manuel, gerardo).
padre(manuel, dahisy).
padre(manuel, elda).
padre(manuel, iraida).
padre(manuel, morelba).
padre(manuel, irazu).
padre(carlos, carlitos).
padre(carlos, fernando).
padre(carlos, carlymar).
padre(carlos, luis).
padre(carlos, nayibett).
padre(gerardo, gerardito).
padre(gerardo, erika).
padre(gerardo, alondra).
padre(ramon, dahisita).
padre(ramon, dariana).
padre(ramon, ramoncito).
padre(contreras, victor).
padre(castro, jose).
padre(salazar, paola).
padre(salazar, andrés).
padre(israel, yrazu).

% Madres.
madre(edilia, carlos).
madre(edilia, gerardo).
madre(edilia, dahisy).
madre(edilia, elda).
madre(edilia, iraida).
madre(edilia, morelba).
madre(edilia, irazu).
madre(mary, carlitos).
madre(mary, fernando).
madre(mary, carlymar).
madre(mary, luis).
madre(mary, nayibett).
madre(yamilet, gerardito).
madre(yamilet, erika).
madre(yamilet, alondra).
madre(dahisy, dahisita).
madre(dahisy, dariana).
madre(dahisy, ramoncito).
madre(elda, victor).
madre(elda, josé).
madre(morelba, paola).
madre(morelba, andrés).
madre(iraida, yrazu).

% Sentencias: 

% Hijos.
hijo(X,Y):- 
    (padre(Y, X) ; madre(Y, X)), hombre(X).

hija(X,Y):- 
    (padre(Y, X) ; madre(Y, X)), mujer(X).   

% Hermanos.
hermano(X,Y):- 
    madre(Z, X), madre(Z, Y), hombre(X), X \= Y.

% hermano(X,Y):- padre(Z,X), padre(Z,Y), hombre(X), X \= Y.

hermana(X,Y):- 
	madre(Z, X), madre(Z, Y), mujer(X), X \= Y.

% hermana(X,Y):- padre(Z,X), padre(Z,Y), mujer(X), X \= Y.

% Abuelos.
abuelo(X,Y):- 
    (hijo(Z, X); hija(Z, X)), (hijo(Y, Z); hija(Y, Z)), hombre(X).

abuela(X,Y):- 
    (hijo(Z, X); hija(Z, X)), (hijo(Y, Z); hija(Y, Z)), mujer(X).

% Tios.
tio(X,Y):- 
    (hermano(Z, X) ; hermana(Z, X)) , (hijo(Y, Z); hija(Y, Z)), hombre(X).

tia(X,Y):- 
    (hermano(Z, X) ; hermana(Z, X)) , (hijo(Y, Z); hija(Y, Z)), mujer(X).

% Nietos.
nieto(X,Y):- 
    (hijo(Z, Y); hija(Z, Y)), (hijo(X, Z); hija(X, Z)), hombre(X).

nieta(X,Y):- 
    (hijo(Z, Y); hija(Z, Y)), (hijo(X, Z); hija(X, Z)), mujer(X).