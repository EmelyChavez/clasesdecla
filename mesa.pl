alLado(A, B, [A, B| _]).
alLado(A, B, [B, A|_]).
alLado(A, B, [_| Resto]):-
    alLado(A, B, Resto).

alLadoMesa(A, B, Lista):-
    alLado(A, B, Lista).
alLadoMesa(A, B, [A| Resto]):-
    last(Resto, B).
alLadoMesa(A, B, [B| Resto]):-
    last(Resto, A).

resolverMesa(Mesa):-
    Amigos = [ana, bruno, carlos, diana, elena],
    permutation(Amigos, Mesa),

    alLadoMesa(ana, bruno, Mesa),
    alLadoMesa(ana, carlos, Mesa),
    \+ alLadoMesa(elena, bruno, Mesa).

alLado(A, B, [A,B|_]).
alLado(A, B, [B,A|_]).
alLado(A, B, [_|Resto]):-
    alLado(A, B, Resto).

alLadoMesa(A, B, Lista):-
    alLadoMesa(A, B, Lista).
alLadoMesa(A, B, [A| Resto]):-
    last(Resto, B).
alLadoMesa(A, B, [B| Resto]):-
    last(Resto, A).

resolverMesa(Mesa):-
    Amigos = [ana, pedro, maria],
    
    

    