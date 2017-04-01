-module(max).
-export([maxl/1]).

maxl([H|T])->
	maxl(T,H).

maxl([],Max)->
	Max;
maxl([H|T],Max) when H>Max ->
	maxl(T,H);
maxl([_H|T],Max)->
	maxl(T,Max).
