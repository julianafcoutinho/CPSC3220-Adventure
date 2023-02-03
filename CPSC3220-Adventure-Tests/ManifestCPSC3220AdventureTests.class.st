"
Unit test for CPSC3220-Adventure
"
Class {
	#name : #ManifestCPSC3220AdventureTests,
	#superclass : #PackageManifest,
	#category : #'CPSC3220-Adventure-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestCPSC3220AdventureTests class >> ruleReNoNilAssignationInInitializeRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#GameFake #initialize #false)) #'2023-02-03T17:49:47.659831-05:00') )
]
