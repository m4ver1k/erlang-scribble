-module(areaofshapes).
-export([sumArea/1,testSum/0,testArea/0]).

areaShape({circle,R})->
	math:pi()*R*R;
areaShape({rectangle,L,W})->
	L*W.

sum([])->
	0;
sum([H|T])->
	H+sum(T).

area([])->
	[];
area([H | T]) ->
	[areaShape(H)|area(T)].

sumArea(Shapes)->
	sum(area(Shapes)).

%Test Cases
testSum()->
	sum([1,2,3])==6.
testArea()->
	area([{circle,3},{rectangle,4,2}])==36.27433388230814.
