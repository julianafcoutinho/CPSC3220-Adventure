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
PlayerTest >> testStartLocationWhenLookThenResultIncludesLocationDescription [

	| description location player |
	location := Location new description: (description := 'north room'); yourself.
	player := Player location: location.
	self assert: (player look includesSubstring: description)
]
