Class {
	#name : 'MyCaptureStrategy',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'ui requests' }
MyCaptureStrategy >> chooseFrom: aCollection [

    ^ aCollection
        detect: [ :each | each isCaptureTarget ]
        ifNone: [ aCollection atRandom ]
]

{ #category : 'testing' }
MyCaptureStrategy >> isCaptureTarget [

    ^ self hasPiece
]
