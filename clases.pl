d(Var, log(Var), 1/Var ):-
    atomic(Var), !. 

d(Var, sin(Var), cos(Var)):-
    atomic(Var), !.

    