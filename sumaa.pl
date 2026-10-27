%SUMA
sum(Var1, Var2, R):-
   atomic(Var1), atomic(Var2), number(Var1), number(Var2), R is Var1 + Var2.

%RESTA
resta(Var1, Var2, R):-
   atomic(Var1), atomic(Var2), number(Var1), number(Var2), R is Var1 - Var2.

suma(Var1+Var2, R):-
       atomic(Var1), atomic(Var2), number(Var1), number(Var2), R is Var1 + Var2.

