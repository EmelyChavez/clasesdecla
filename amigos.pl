seis_amigos(MedTransp):-
    =(MedTransp, [Auto, Avion, Tren]),
    Auto = [ _, _ ],
    Avion = [ _, _ ],
    Tren = [ _, _ ],
    medio_transporte(alejandro, MedioAle, MedTransp),
    \==(MedioAle, auto),
    medio_transporte(benito, MedioBen, MedTransp),
    \==(MedioBen, avion),
    ==(MedioAle, MedioBen),
    medio_transporte(andres, avion, MedTransp),
    medio_transporte(carlos, MedioCar, MedTransp),
    \==(MedioCar, avion),
    medio_transporte(dario, MedioDar, MedTransp),
    \==(MedioCar, MedioDar),
    medio_transporte(tomas, _, MedTransp).


medio_transporte(Amigo, auto, [[Amigo, _], _, _]).
medio_transporte(Amigo, auto, [[_, Amigo], _, _]).

medio_transporte(Amigo, avion, [_, [Amigo, _], _]).
medio_transporte(Amigo, avion, [_, [_, Amigo], _]).

medio_transporte(Amigo, tren, [_, _, [Amigo, _]]).
medio_transporte(Amigo, tren, [_, _, [_, Amigo]]).

%Buscar que hace notrace. y nodebug.

deducir_clave([D1, D2, D3, D4, D5]):-
    between(0, 9, D1),
    between(0, 9, D2),
    between(0, 9, D3),
    between(0, 9, D4),
    between(0, 9, D5),
    
    D5 + D3 =:= 14,
    D1 =:= 2*D2 - 1 ,
    D2 + D3 =:= 10, 
    D1 + D2 + D3 + D4 + D5 =:= 30.
    
senoras(Solucion):-
    Solucion = [[blanco, P1], [rubio, P2], [castano, P3]],
    permutation([blanco, rubio, castano], [P1, P2, P3]),

    P1 \= blanco,
    P2 \= rubio,
    P3 \= castano,
    P1 \= castano.




% Comprobar si dos familias viven al lado
alLado(A, B, [A, B | _]).
alLado(A, B, [B, A | _]).
alLado(A, B, [_ | Resto]):-
    alLado(A, B, Resto).

% Orden de las cuatro casas
casas(Orden):-
    permutation([vasquez, moreno, gonzalez, flores], Orden),

    % Vasquez vive al lado de Moreno
    alLado(vasquez, moreno, Orden),

    % Vasquez no vive al lado de Gonzalez
    \+ alLado(vasquez, gonzalez, Orden),

    % Gonzalez no vive al lado de Flores
    \+ alLado(gonzalez, flores, Orden).

