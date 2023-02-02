"
A location in the game world.  Has exits each with a unique direction associated with them.
"
Class {
	#name : #Location,
	#superclass : #Object,
	#instVars : [
		'exits',
		'description'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #exits }
Location >> addExit: anExit direction: aDirection [

	exits at: aDirection put: anExit
	
]

{ #category : #accessing }
Location >> description [

	^ description
]

{ #category : #accessing }
Location >> description: anObject [

	description := anObject
]

{ #category : #exits }
Location >> exitInDirection: aDirection [

	^exits at: aDirection

	
]

{ #category : #exits }
Location >> exitNames [

	^ exits keys asSet
]

{ #category : #initialization }
Location >> initialize [

	super initialize.
	exits := Dictionary new.
]
