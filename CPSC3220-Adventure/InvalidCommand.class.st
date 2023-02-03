"
I correspond to an invalid command (one whose command word is not understood).
"
Class {
	#name : #InvalidCommand,
	#superclass : #Command,
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #accessing }
InvalidCommand class >> commandWord [

	^'invalid'
]

{ #category : #executing }
InvalidCommand >> executeInGame: aGame [

	^aGame invalidCommand
]
