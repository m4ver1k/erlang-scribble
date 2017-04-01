-module(nublast).
-export([nub/1]).

nub([])->
	[];
nub([X|Xs])->
	[X|nub(removeAll(X,Xs))].


removeAll(_X,[])->
	[];
removeAll(X,[X|Xs])->
	removeAll(X,Xs);
removeAll(X,[Y|Xs])->
	[Y|removeAll(X,Xs)].

