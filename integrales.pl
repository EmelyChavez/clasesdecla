%Integral de una constante:
i(Var, K, K*Var):-
    atomic(Var), number(K), !.

%Integral de una variable respecto a si misma:
i(Var, Var, 1/2*Var^2):-
    atomic(Var), !.

%Integral de una variable elevada a la N:
i(Var, Var^N, 1/Nm1*Var^Nm1):-
    atomic(Var), number(N), is(Nm1, +(N,1)), !.

%Integral de una constante por una variable elevada a la N:
%ie(X, 3*X^5, IFx), is(X,10). //para evaluar en X = 10
%ie(X, 3*X^5, IFx), assert((evalIFx(X,W):-is(W, IFx))). //permite guardar la funcion con asssert para poder probar 
%is(Li,2), evalIFx(Li, ILi), is(Ls, 4), evalIFx(Ls, ILs), is(Area, -(ILs, ILi)).  //para poder probar con los limites
%listing(evalIFx). //para imprimir que funcion esta guardada
%abolish(evalIFx, 2), ie(X, 3*X^5, IFx), assert((evalIFx(X,W):-is(W, IFx))). //para limpiar el listing de la funcion con la que evaluamos
ie(Var, K*Var^N, K/Nm1*Var^Nm1):-
    var(Var), number(K), number(N), is(Nm1, +(N,1)), !.

% regla para calcular la integral definida de una función
integralDefinida(Var, Funcion, LimInf, LimSuperior, Area) :-
    abolish(evall, 2),                  % Limpia definiciones previas de evaluación
    s(Var, Funcion, R),                 % Obtiene la integral simbólica
    asserta((evall(Var, W) :- is(W, R))), % Crea dinámicamente la regla de evaluación
    evall(LimSuperior, ELs),            % Evalúa en el límite superior
    evall(LimInf, ELi),                 % Evalúa en el límite inferior
    is(Area, -(ELs, ELi)).              % Resta ambos valores para obtener el área