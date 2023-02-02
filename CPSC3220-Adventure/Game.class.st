Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'player'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #'as yet unclassified' }
Game class >> startLocation: aLocation [

	^self new initializeStartLocation: aLocation
]

{ #category : #'command execution' }
Game >> executeCommand: aCommand [

	aCommand commandWord = 'look' ifTrue: [ ^ player look ].
	aCommand commandWord = 'go' ifTrue: [ 
		player go: aCommand firstArgument.
		^player look ]
]

{ #category : #initialization }
Game >> initializeStartLocation: aLocation [

	player := Player location: aLocation
]
