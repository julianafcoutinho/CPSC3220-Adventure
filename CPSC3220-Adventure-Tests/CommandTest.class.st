Class {
	#name : #CommandTest,
	#superclass : #TestCase,
	#category : #'CPSC3220-Adventure-Tests-Core'
}

{ #category : #tests }
CommandTest >> testGivenSpaceSeparatedStringWhenParsedThenFirstWordAndArgumentsDetected [

	| command |
	command := Command parse: 'go north'.
	self assert: command commandWord equals: 'go'.
	self assert: command argumentCount equals: 1.
	self assert: command firstArgument equals: 'north'
]
