-module(nub).
-export([nubf/1]).

nubf([])->
	[];
nubf(L)->
	nubf(L,[]).
nubf([],RES)->
	RES;
nubf([H|T],RES)->
	case member(H,RES) of
		true->
			nubf(T,RES);
		false->
			nubf(T,RES ++ [H])
	end.

member(_,[])->
	false;
member(X,[X|_])->
	true;
member(X,[_|T])->
	member(X,T).
