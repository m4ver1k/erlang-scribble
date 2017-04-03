-module(reduce).
-export([sum/1]).

reduce(_F,S,[])->
    s;
reduce(F,S,[H|Ts])->
    F(H,reduce(F,S,Ts)).

sum(L)->
    reduce(fun (X,Y) -> X+Y end,0,L).