-module(filter).
-export([even/1]).


even([])->
    [];
even(L)->
    filter(fun (X)->X rem 2==0 end,L).


filter(_F,[])->
    [];
filter(F,[H|Ts])->
    case F(H) of 
        true->
            [H|filter(F,Ts)];
        false->
            filter(F,Ts)
    end.