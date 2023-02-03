"
Primary Pharo user interface for text-based adventure games.
"
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
	commandTextOutput text:
		 result , String cr , String cr ,  commandTextOutput text.
	commandTextInput text: ''
]

{ #category : #initialization }
GamePresenter >> defaultLayout [

	layout := SpBoxLayout newTopToBottom.
	layout
		spacing: 5;
		add: commandTextInput withConstraints: [ :c | c height: 40 ];
		add: commandTextOutput.
	^ layout
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

{ #category : #initialization }
GamePresenter >> initializeWindow: aWindow [

	super initializeWindow: aWindow.
	aWindow title: 'Skyrim'.
	aWindow aboutText: 'A great game!'.
]
