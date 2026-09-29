Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> targetSquaresLegal: aBoolean [
	
	| first second |
	
	first := self isWhite 
		ifTrue: [ square up ]
		ifFalse: [ square down ].
	
	second := first ifNotNil: [ 
		self isWhite
			ifTrue:[ first up]
			ifFalse:[ first down ]].
		

	^ (self isWhite
		   ifTrue: [ square name last = $2
							ifTrue: [{ first. second } ]
							ifFalse: [ { first  } ]]
						
		   ifFalse: [ square name last = $7
							ifTrue: [ { first. second } ]
							ifFalse: [ { first } ]]) 
		select: [ :s |
    s notNil and: [
        s hasPiece not and: [
            s = second
                ifTrue: [ first hasPiece not ]
                ifFalse: [ true ] ] ] ]
]
