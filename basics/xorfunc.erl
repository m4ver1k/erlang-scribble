-module(xorfunc).
-export([xOr/2]).
xOr(true,false)->
	true;
xOr(false,true)->
	true;
xOr(_,_)->
	false.
