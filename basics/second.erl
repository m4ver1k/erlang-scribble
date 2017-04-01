-module(second).
-export([hypo/2,area/2,peri/2]).
hypo(A,B)->
   math:sqrt(first:square(A)+first:square(B)).

area(A,B) ->
   first:mult(A,B)/2.

peri(A,B)->
   A+B+hypo(A,B).
