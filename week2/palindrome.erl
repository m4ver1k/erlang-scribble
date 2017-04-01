-module(palindrome).
-export([palin/1]).


palin(S)->
	S==reverse(S).

reverse([])->
	[];
reverse([H|T])->
	reverse(H,T,[]).
reverse(H,[],RES)->
	[H]++RES;
reverse(H,[N|T],RES)->
	reverse(N,T,[H]++RES).

