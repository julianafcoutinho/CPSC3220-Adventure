Class {
	#name : #GameTest,
	#superclass : #TestCase,
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #tests }
GameTest >> testWhenGoExecutedThenDestinationRoomDescriptionIncluded [

	|  location game result endDescription endLocation |
	location := Location new
		            description: 'neverland';
		            yourself.
	endLocation := Location new
		               description: (endDescription := 'Mermaid place');
		               yourself.
	location addExit: endLocation direction: 'east'.
	game := Game startLocation: location.
	result := game executeCommand: (Command parse: 'go east').
	self assert: (result includesSubstring: endDescription)
]

{ #category : #tests }
GameTest >> testWhenLookExecutedThenStartRoomDescriptionIncluded [

	| description location game result |
	location := Location new description: (description := 'neverland'); yourself.
	game := Game startLocation: location.
	result := game executeCommand: (Command parse: 'look').
	self assert: (result includesSubstring: description)
]
