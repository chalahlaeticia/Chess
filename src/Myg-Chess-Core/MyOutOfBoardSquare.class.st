Class {
	#name : 'MyOutOfBoardSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'arithmetic' }
MyOutOfBoardSquare >> + aPoint [

    ^ self
]

{ #category : 'as yet unclassified' }
MyOutOfBoardSquare >> containsOpponentOfColor: aColor [

    ^ false
]

{ #category : 'testing' }
MyOutOfBoardSquare >> hasPiece [

    ^ true
]

{ #category : 'testing' }
MyOutOfBoardSquare >> isInsideBoard [

    ^ false
]
