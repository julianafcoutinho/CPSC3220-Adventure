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
	player currentTime: (Time hour:1 minute:1 second: 1).
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
	player currentTime: (Time hour:1 minute:1 second: 1).
	self assert: (player look includesSubstring: direction1).
	self assert: (player look includesSubstring: direction2)
]

{ #category : #tests }
PlayerTest >> testGivenStartLocationWhenLookThenResultIncludesLocationDescription [

	| description location player |
	location := Location new description: (description := 'north room'); yourself.
	player := Player location: location.
	player currentTime: (Time hour:1 minute:1 second: 1).
	self assert: (player look includesSubstring: description)
]

{ #category : #tests }
PlayerTest >> testLookShowsTime [

	| startLocation  player |
	startLocation := Location new description: 'start'; yourself.
	player := Player location: startLocation.
	self assert: ((player look: (Time hour:12 minute:00 second:00)) includesSubstring: '12:00').
]
