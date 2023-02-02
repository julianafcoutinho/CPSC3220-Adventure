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

	^location description
]
