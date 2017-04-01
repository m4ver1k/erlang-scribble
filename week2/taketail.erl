-module(taketail).
-export([take/2]).
-spec take(integer(),[T])->[T].

take(0,_)->
	[];
take(_,[])->
	[];
take(N,[H|T])->
	take(N-1,T,[H]).

take(0,_,Result)->
	lists:reverse(Result);
take(_,[],Result)->
	lists:reverse(Result);
take(N,[H|T],Result)->
	take(N-1,T,[H|Result]).

