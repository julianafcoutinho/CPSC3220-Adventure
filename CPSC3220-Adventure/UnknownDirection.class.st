Class {
	#name : #UnknownDirection,
	#superclass : #Error,
	#category : #'CPSC3220-Adventure'
}

{ #category : #signalling }
UnknownDirection >> initialize [ 
	super initialize.
	self messageText: 'This direction is not valid.'.
]
