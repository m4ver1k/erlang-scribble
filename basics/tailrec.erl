-module(tailrec).
-export([fact/1,loop/1,sum/1,perfect/1]).

fact(N)->
	fact(N,1).
fact(0,P)->
	P;
fact(N,P)->
	fact(N-1,P*N).


loop(N) when N>0->
	io:format("~p:~n",[N]),
	loop(N-1);
loop(_)->
	io:format("bye~n").
sum(N)->
	sum(N,0).
sum(0,RES)->
	RES;
sum(I,RES)->
	sum(I-1,RES+I).

perfect(N)->
	perfect(N,N-1,0).
perfect(N,D,S) when N rem D ==0->
	perfect(N,D-1,S+D);
perfect(N,0,S)->
	S==N;
perfect(N,D,S)->
	perfect(N,D-1,S).
