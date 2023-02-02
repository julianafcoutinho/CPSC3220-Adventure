"
I am a player with a location and...
"
Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'location'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #'instance creation' }
Player class >> location: aLocation [

	^self new initializeLocation: aLocation
]

{ #category : #actions }
Player >> go: aDirection [

	location := location exitInDirection: aDirection
]

{ #category : #initialization }
Player >> initializeLocation: aLocation [

	location := aLocation.
	
]

{ #category : #actions }
Player >> look [

	| ws |
	ws := String new writeStream.
	ws
		nextPutAll: location description;
		cr;
		cr.
	location exitNames
		ifEmpty: [ ws nextPutAll: 'No exits' ]
		ifNotEmpty: [ 
			ws
				nextPutAll: 'Exits:';
				cr.
			location exitNames do: [ :e | ws nextPutAll: e ] separatedBy: [ws nextPutAll: ', ' ]].
	^ ws contents
]
