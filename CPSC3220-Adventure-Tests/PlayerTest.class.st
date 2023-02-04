Class {
	#name : #PlayerTest,
	#superclass : #TestCase,
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #tests }
PlayerTest >> testGivenStartLocationWhenGoThenInNewLocation [

	| startLocation endDescription endLocation player |
	startLocation := Location new description: 'start'; yourself.
	endLocation := Location new description: (endDescription := 'end'); yourself.
	startLocation addExit: endLocation direction: 'up'.
	player := Player location: startLocation.
	player go: 'up'.
	self assert: (player look includesSubstring: endDescription)
]

{ #category : #tests }
PlayerTest >> testGivenStartLocationWhenLookThenResultIncludesExitNames [

	|  location player direction1 direction2 |
	location := Location new
		            description: 'north room';
		            yourself.
	location
		addExit: Location new direction: (direction1 := 'up');
		addExit: Location new direction: (direction2 := 'sideways').
	player := Player location: location.
	self assert: (player look includesSubstring: direction1).
	self assert: (player look includesSubstring: direction2)
]

{ #category : #tests }
PlayerTest >> testGivenStartLocationWhenLookThenResultIncludesLocationDescription [

	| description location player |
	location := Location new description: (description := 'north room'); yourself.
	player := Player location: location.
	self assert: (player look includesSubstring: description)
]
