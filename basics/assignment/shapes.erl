%%shapes - assignment
- module(shapes).
- export([perimeter/1,area/1,testPerimeterRectangle/0,testPerimeterCircle/0,testPerimeterTriangle/0,testAreaTriangle/0]).

perimeter({rectangle,L,W})->
	2*(L+W);
perimeter({circle,R})->
	2*math:pi()*R;
perimeter({triangle,A,B,C})->
	A+B+C.

area({triangle,Base,Height})->
	(Base*Height)/2.

testPerimeterRectangle()->
	perimeter({rectangle,10,5})==30.

testPerimeterCircle()->
	perimeter({circle,5})==31.41592653589793.

testPerimeterTriangle()->
	perimeter({triangle,10,5,4})==19.

testAreaTriangle()->
	area({triangle,10,2})==10.
