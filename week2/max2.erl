-module(max2).
-export([maxx/1]).
maxx([X])->
	X;
maxx([H|T])->
	max(H,maxx(T)).


