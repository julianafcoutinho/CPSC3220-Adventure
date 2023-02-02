Class {
	#name : #GamePresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'commandTextInput',
		'commandTextOutput',
		'game'
	],
	#category : #'CPSC3220-Adventure-SpecUI'
}

{ #category : #actions }
GamePresenter >> commandEntered: aString [

	| result |
	result := game executeCommand: (Command parse: aString).
	commandTextOutput text: commandTextOutput text , String cr , String cr, result
]

{ #category : #initialization }
GamePresenter >> defaultLayout [

	layout := SpBoxLayout newTopToBottom.
	layout
		add: commandTextInput;
		add: commandTextOutput.
		^layout
]

{ #category : #initialization }
GamePresenter >> initialize [

	super initialize.
	game := Game skyrim
]

{ #category : #initialization }
GamePresenter >> initializePresenters [

	super initializePresenters.
	commandTextInput := self newTextInput
		                    placeholder: 'Enter your command';
		                    yourself.
	commandTextInput whenSubmitDo: [:t |
		self commandEntered: t].
	commandTextOutput := self newText
]
