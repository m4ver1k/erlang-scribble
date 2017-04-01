%% Program to cound digits in binary representation.
- module(bits).
- export([bits/1,testBitsFor8/0,testBitsFor7/0]).

bits(N)->
	{BIN_N,_}=string:to_integer(integer_to_list(N, 2)),
	sum_of_bits(BIN_N,0).

sum_of_bits(0,SUM)->
	SUM;
sum_of_bits(N,SUM)->
	sum_of_bits(N div 10,SUM+(N rem 10)).

testBitsFor8()->
	bits(8)==1.
testBitsFor7()->
	bits(7)==3.
