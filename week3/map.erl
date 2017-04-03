-module(map).
-export([double_all/1]).

double_all([])->
    [];
double_all(L)->
    map(fun double/1,L).

map(_F,[])->
    [];
map(F,[H|T])->
    [F(H)|map(F,T)].



double(A)->A*A.