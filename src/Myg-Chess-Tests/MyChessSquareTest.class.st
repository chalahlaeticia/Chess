Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testMovingOutsideBoardReturnsOutOfBoardSquare [

    | board outsideSquare |

    board := MyChessBoard empty.
    outsideSquare := (board at: 'h4') right.

    self deny: outsideSquare isInsideBoard.
    self assert: outsideSquare hasPiece
]
