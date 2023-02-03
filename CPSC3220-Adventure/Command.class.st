"
A command has a keyword (#commandWord) and a collection of 0 or more arguments.  For example, the string 'go west' corresponds to the commandWord 'go' and an arguments list of #('west').
"
Class {
	#name : #Command,
	#superclass : #Object,
	#instVars : [
		'commandWord',
		'arguments'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #'instance creation' }
Command class >> parse: aString [

	| tokens commandClass |
	tokens := aString substrings: ' '.
	commandClass := self allSubclasses
		                detect: [ :each | each commandWord = tokens first ]
		                ifNone: [ InvalidCommand ].
	^ commandClass new
		 
		  arguments: tokens allButFirst;
		  yourself
]

{ #category : #initialization }
Command >> arguments: anObject [

	arguments := anObject
]

{ #category : #executing }
Command >> executeInGame: aGame [

	self subclassResponsibility
]
