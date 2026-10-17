Class {
	#name : 'MyRookTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyRookTests >> testId [

	self assert: MyRook new id equals: 'R'
]

{ #category : 'tests' }
MyRookTests >> testMoves [

	| rook squares board |
	board := MyChessBoard empty.
	board at: 'e4' put: (rook := MyRook white).

	squares := rook targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e5 e6 e7 e8 d4 c4 b4 a4 f4 g4 h4 e3 e2 e1 ) collect: [ :name |
				 board at: name ])
]

{ #category : 'tests' }
MyRookTests >> testMovesFromCornerStayInsideBoard [

    | board rook squares expectedSquares |

    board := MyChessBoard empty.
    board at: 'a1' put: (rook := MyRook white).

    squares := rook targetSquares.

    expectedSquares :=
        #(a2 a3 a4 a5 a6 a7 a8 b1 c1 d1 e1 f1 g1 h1)
            collect: [ :squareName | board at: squareName ].

    self assert: squares size equals: 14.
    self assertCollection: squares includesAll: expectedSquares
]

{ #category : 'tests' }
MyRookTests >> testMovesWithOponentObstacle [

	| bishop squares board |
	board := MyChessBoard empty.
	board at: 'e4' put: (bishop := MyRook white).

	"Rooks don't jump above pieces"
	"But they eat pieces of the other color"
	"Let's put a black obstacle on g4, blocking the f rank"
	board at: 'g4' put: MyRook black.

	squares := bishop targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e5 e6 e7 e8 d4 c4 b4 a4 f4 g4 e3 e2 e1 ) collect: [ :name |
				 board at: name ])
]

{ #category : 'tests' }
MyRookTests >> testMovesWithSameColorObstacle [

	| bishop squares board |
	board := MyChessBoard empty.
	board at: 'e4' put: (bishop := MyRook white).

	"Rooks don't jump above pieces"
	"And they don't eat pieces of the same color either"
	"Let's put a white obstacle on g4, blocking the f rank"
	board at: 'g4' put: MyRook white .

	squares := bishop targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e5 e6 e7 e8 d4 c4 b4 a4 f4 e3 e2 e1 ) collect: [ :name |
				 board at: name ])
]
