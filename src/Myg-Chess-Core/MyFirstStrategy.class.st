Class {
	#name : 'MyFirstStrategy',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'ui requests' }
MyFirstStrategy >> chooseFrom: aCollection [

    ^ aCollection first
]
