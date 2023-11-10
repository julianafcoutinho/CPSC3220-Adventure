"
An adventure game.  I start the player in a given location and can execute commands.
"
Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'player',
		'currentTime'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #'sample games' }
Game class >> skyrim [

	| riverwoodSouth riverwoodNorth riverwoodTrader |
	riverwoodSouth := Location new
		                  description: 'South end of Riverwood';
		                  yourself.
	riverwoodNorth := Location new
		                  description: 'North end of Riverwood';
		                  yourself.
	riverwoodTrader := Location new
		                   description:
			                   'The Riverwood Trader.  Sell all of your useless gear here!';
		                   yourself.
	riverwoodSouth
		addExit: riverwoodNorth direction: 'north';
		addExit: riverwoodTrader direction: 'east'.
	riverwoodNorth addExit: riverwoodSouth direction: 'south'.
	riverwoodTrader addExit: riverwoodSouth direction: 'out'.
	^ self startLocation: riverwoodSouth
]

{ #category : #'instance creation' }
Game class >> startLocation: aLocation [

	^self new initializeStartLocation: aLocation
]

{ #category : #accessing }
Game >> currentTime [

	^ currentTime
]

{ #category : #accessing }
Game >> currentTime: anObject [

	currentTime := anObject
]

{ #category : #'command execution' }
Game >> executeCommand: aCommand [

	^aCommand executeInGame: self
]

{ #category : #'command execution' }
Game >> go: aDirection [
	[player go: aDirection.
	
	^player look]
	on: UnknownDirection do: [ ^'That is not a valid direction. Please look again to find out where you can go.'].
	
]

{ #category : #initialization }
Game >> initializeStartLocation: aLocation [

	player := Player location: aLocation.
	player currentTime: (Time hour: 12 minute:0 second: 0).
]

{ #category : #'command execution' }
Game >> invalidCommand [

	^'Invalid command'
]

{ #category : #'command execution' }
Game >> look [

	^player look
]
