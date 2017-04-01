-module(doublef).
-export([double/1,testDoubleEmpty/0,testDouble/0]).

double([])->
	[];
double([H|T])->
	[H*H | double(T)].
testDoubleEmpty()->
	double([])==[].
testDouble()->
	double([2,3,4])==[4,9,16].

