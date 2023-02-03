"
The look command.
"
Class {
	#name : #LookCommand,
	#superclass : #Command,
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #accessing }
LookCommand class >> commandWord [

	^'look'
]

{ #category : #executing }
LookCommand >> executeInGame: aGame [

	^aGame look
]
