Class {
	#name : #CommandTest,
	#superclass : #TestCase,
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #tests }
CommandTest >> testGivenGoCommandWhenExecutedGameSentGoWithDirection [

	| command fake |
	command := Command parse: 'go north'.
	command executeInGame: (fake := GameFake new).
	self assert: fake commandsSent equals: 1.
	self assert: fake lastCommandSent  equals: #go:.
	self assert: fake lastArguments  equals: #( 'north' )
]

{ #category : #tests }
CommandTest >> testGivenLookCommandWhenExecutedGameSentLookWithNoArguments [

	| command fake |
	command := Command parse: 'look'.
	command executeInGame: (fake := GameFake new).
	self assert: fake commandsSent equals: 1.
	self assert: fake lastCommandSent equals: #look.
	self assert: fake lastArguments equals: #(  )
]
