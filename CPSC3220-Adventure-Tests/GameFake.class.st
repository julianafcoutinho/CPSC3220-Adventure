"
I'm test fake for a Game
"
Class {
	#name : #GameFake,
	#superclass : #Object,
	#instVars : [
		'commandsSent',
		'lastCommandSent',
		'lastArguments'
	],
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #accessing }
GameFake >> commandsSent [

	^commandsSent
]

{ #category : #actions }
GameFake >> go: aDirection [

	commandsSent := commandsSent + 1.
	lastCommandSent := #go:.
	lastArguments := Array with: aDirection
]

{ #category : #initialization }
GameFake >> initialize [

	super initialize.
	commandsSent := 0.
	lastCommandSent := nil.
	lastArguments := nil
]

{ #category : #accessing }
GameFake >> lastArguments [

	^ lastArguments
]

{ #category : #accessing }
GameFake >> lastCommandSent [

	^lastCommandSent
]

{ #category : #actions }
GameFake >> look [

	commandsSent := commandsSent + 1.
	lastCommandSent := #look.
	lastArguments := #()
]
