-module(median).
-export([median/1]).
	
	median(L)->
		case L of
			[X] ->
				X;
			[X,Y]->
				(X+Y)/2;
			[_X | _Xs]=L ->
				SortedL=lists:sort(L),
				N=length(SortedL),
				case N rem 2 of
					1 ->
						lists:nth(N div 2 +1,SortedL);
					_->
						(lists:nth(N div 2,SortedL) + lists:nth((N div 2)+1,SortedL))/2
				end
			end.

