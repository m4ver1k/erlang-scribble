-module(take).
-export([take/2]).

take(0,_)->
	[];
take(_,[])->
	[];
take(N,[X|Xs]) when N >0->
	[X | take(N-1,Xs)].
