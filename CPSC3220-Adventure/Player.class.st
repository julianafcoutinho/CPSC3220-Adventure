"
I am a player with a location and...
"
Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'location',
		'currentTime'
	],
	#category : #'CPSC3220-Adventure-Core'
}

{ #category : #'instance creation' }
Player class >> location: aLocation [

	^self new initializeLocation: aLocation
]

{ #category : #accessing }
Player >> currentTime [
	
	^currentTime
]

{ #category : #accessing }
Player >> currentTime: anObject [

	currentTime := anObject
]

{ #category : #private }
Player >> describeExitsOn: ws [
location exitNames
		ifEmpty: [ ws nextPutAll: 'No exits' ]
		ifNotEmpty: [ 
			ws
				nextPutAll: 'Exits:';
				cr.
			location exitNames
				do: [ :e | ws nextPutAll: e ]
				separatedBy: [ ws nextPutAll: ', ' ] ].
]

{ #category : #actions }
Player >> go: aDirection [
	[location := location exitInDirection: aDirection.
	self currentTime: (self currentTime addTime: 20 minutes).]
	on: UnknownDirection do: [UnknownDirection signal ].
]

{ #category : #initialization }
Player >> initializeLocation: aLocation [

	location := aLocation.
	
]

{ #category : #accessing }
Player >> location [

	^ location
]

{ #category : #accessing }
Player >> location: anObject [

	^ location := anObject
]

{ #category : #actions }
Player >> look [

	| ws |
	ws := String new writeStream.
	ws
		nextPutAll: location description;
		cr;
		cr.
	ws 	nextPutAll:  'The time is '.
	ws nextPutAll: 
	(self currentTime) printMinutes;
	cr;
	cr.
	
	self describeExitsOn: ws.
	^ ws contents
]
