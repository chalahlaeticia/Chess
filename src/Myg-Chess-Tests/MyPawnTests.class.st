Class {
	#name : 'MyPawnTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanMoveTwoSquares [

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
