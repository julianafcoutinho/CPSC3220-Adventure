"
The go command.
"
Class {
	#name : #GoCommand,
	#superclass : #Command,
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #accessing }
GoCommand class >> commandWord [

	^'go'
]

{ #category : #executing }
GoCommand >> executeInGame: aGame [

	^ aGame go: arguments first
]
