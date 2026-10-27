buscar([], _):-
    write('Dato no encontrado'),
    !.
buscar([_, Dato, _], Dato):-
    write('Dato '),
    write(Dato),
    write(' encontrado'), 
    !.

buscar([SAI, DatoAct, _], Dato):-
    <(Dato, DatoAct),
    buscar(SAI, Dato),
    !.

buscar([_, DatoAct, SAD], Dato):-
    >(Dato, DatoAct),
    buscar(SAD, Dato).

preorden([]):-!.

preorden([SAI, Dato, SAD]):-
   writeln(Dato),
   preorden(SAI),
   preorden(SAD).

inorden([]):- !.
inorden([SAI, Dato, SAD]):-
    inorden(SAI),
    writeln(Dato),
    inorden(SAD).

postorden([]):- !.
postorden([SAI, Dato, SAD]):-
    postorden(SAI),
    postorden(SAD),
    writeln(Dato).    
    
altura([], 0):- !.
altura([SAI, _, SAD], H):-
    altura(SAI, HI),
    altura(SAD, HD),
    H is 1 + max(H1, HD).
    