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

	| tokens |
	tokens := aString substrings: ' '.
	^ self new
		  commandWord: tokens first;
		  arguments: tokens allButFirst;
		  yourself
]

{ #category : #accessing }
Command >> argumentCount [

	^arguments size
]

{ #category : #accessing }
Command >> arguments: anObject [

	arguments := anObject
]

{ #category : #accessing }
Command >> commandWord [

	^ commandWord
]

{ #category : #accessing }
Command >> commandWord: anObject [

	commandWord := anObject
]

{ #category : #accessing }
Command >> firstArgument [

	^arguments first
]
