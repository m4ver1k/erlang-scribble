-module (max3).
-export ([maxThree/3]).

maxThree(A,B,C)->
	max(A,max(B,C)).
