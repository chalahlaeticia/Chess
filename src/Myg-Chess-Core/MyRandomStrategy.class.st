Class {
	#name : 'MyRandomStrategy',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'ui requests' }
MyRandomStrategy >> chooseFrom: aCollection [

    ^ aCollection atRandom
]
