Class {
	#name : 'MyEmptyPiece',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyEmptyPiece >> isPiece [

    ^ false

]

{ #category : 'rendering' }
MyEmptyPiece >> renderPieceOn: aSquare [

    ^ aSquare renderEmpty
]
