Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testEmptySquareUsesAnObject [

    | board square |

    board := MyChessBoard empty.
    square := board at: 'e4'.

    self deny: square hasPiece.
    self deny: square contents isNil
]

{ #category : 'tests' }
MyChessSquareTest >> testMovingOutsideBoardReturnsOutOfBoardSquare [

    | board outsideSquare |

    board := MyChessBoard empty.
    outsideSquare := (board at: 'h4') right.

    self deny: outsideSquare isInsideBoard.
    self assert: outsideSquare hasPiece
]
