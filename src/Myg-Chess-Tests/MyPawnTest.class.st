Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testPawnAtBoardEdgeDoesNotCrash [

    | board pawn |

    board := MyChessBoard empty.
    board at: 'h8' put: (pawn := MyPawn white).

    self shouldnt: [ pawn targetSquares ] raise: Error
]

{ #category : 'tests' }
MyPawnTest >> testPawnCannotMoveTwoSquaresIfBlocked [

    | board pawn squares |

    board := MyChessBoard empty.
    board at: 'e2' put: (pawn := MyPawn white).
    board at: 'e4' put: MyPawn black.

    squares := pawn targetSquares.

    self assertCollection: squares
        includesAll: { board at: 'e3' }.

    self deny: (squares includes: (board at: 'e4')).
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCanCaptureDiagonally [

    | board pawn squares |

    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).
    board at: 'f5' put: MyPawn black.

    squares := pawn targetSquares.

    self assert: (squares includes: (board at: 'f5')).

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCanMoveTwoSquares [

    | pawn squares board |

    board := MyChessBoard empty.
    board at: 'e2' put: (pawn := MyPawn white).

    squares := pawn targetSquares.

    self
        assertCollection: squares
        includesAll: {
            board at: 'e3'.
            board at: 'e4'
        }

]
