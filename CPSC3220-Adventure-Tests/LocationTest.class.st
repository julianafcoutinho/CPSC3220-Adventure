Class {
	#name : #LocationTest,
	#superclass : #TestCase,
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #tests }
LocationTest >> testGivenALocationWhenAddingExitsNoError [

	Location new
		addExit: Location new direction: 'north'.
]

{ #category : #tests }
LocationTest >> testGivenALocationWithDescriptionWhenGettingDescriptionThenCorrectValueReturned [

	| l description |
	(l := Location new) description: (description := 'here').
	self assert: l description equals: description
]

{ #category : #tests }
LocationTest >> testGivenALocationWithExitQueryExitInDirectionThenCorrectExitReturned [

	| southRoom northRoom |
	southRoom := Location new.
	northRoom := Location new.
	southRoom addExit: northRoom direction: 'north'.
	
	self assert: (southRoom exitInDirection: 'north') equals: northRoom
]

{ #category : #tests }
LocationTest >> testGivenALocationWithExitsWhenExitsListedThenAllExitDirectionsReturned [

	| southRoom  |
	southRoom := Location new.
	southRoom addExit: Location new direction: 'north'.
	southRoom addExit: Location new direction: 'south'.

	self assert: southRoom exitNames equals: (Set with: 'north' with: 'south').
]

{ #category : #tests }
LocationTest >> testGivenAnInvalidExitExceptionIsRaised [

	| southRoom northRoom |
	southRoom := Location new.
	
	self should: [southRoom exitInDirection: 'west'] raise: UnknownDirection 
]
