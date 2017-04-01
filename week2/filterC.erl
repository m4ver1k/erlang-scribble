-module(filterC).
-export([filterC/1,filterC2/1]).

filterC([])->
	[];
filterC([{circle,_}=C|T])->
	[C|filterC(T)];
filterC([_|T])->
	filterC(T).

filterC2([])->
	[];
filterC2([H|T])->
	case H of
		{circle,_}=C->
			[C|filterC2(T)];
		_->
			filterC2(T)
	end.

		

