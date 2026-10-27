seis_amigos(Solucion):-
    Solucion = [Avion, Auto, Tren],
    Avion = [_,_],
    Auto = [_,_],
    Tren = [_,_],
    medioTransp(alejandro, MedAle, Solucion),
    \==(MedAle, auto),
    medioTransp(benito, MedBeni, Solucion),
    \==(MedBeni, avion),
    ==(MedAle, MedBeni),
    medioTransp(andres, MedAnd, Solucion),
    ==(MedAnd, avion),
    medioTransp(carlos, MedCar, Solucion),
    medioTransp(dario, MedDar, Solucion),
    \==(MedCar, avion), 
    \==(MedCar,MedDar),
    medioTransp(tomas, _, Solucion).
    
    medioTransp(Amigo, avion,[[Amigo,_], _, _] ).
    medioTransp(Amigo, avion,[[_, Amigo], _, _]).

    medioTransp(Amigo, auto,[_, [Amigo,_], _] ).
    medioTransp(Amigo, auto,[_, [_, Amigo], _]).

    medioTransp(Amigo, tren,[_, _, [Amigo,_]] ).
    medioTransp(Amigo, tren,[_, _, [_, Amigo]]).

