-module(even).
-export([even/1]).

even([])->
	[];
even([H|T])->
	case H of 
		H when H rem 2==0 ->
			[H|even(T)];
		_->
			even(T)
	end.

