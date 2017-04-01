-module(first).
-export([double/1,square/1,treble/1,mult/2]).

mult(X,Y) ->
   X*Y.

double(X) ->
   mult(2,X).

square(X)->
   mult(X,X).

treble(X)->
   mult(X,mult(X,X)).
