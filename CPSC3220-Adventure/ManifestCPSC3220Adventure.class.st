"
An text-based adventure game framework.
"
Class {
	#name : #ManifestCPSC3220Adventure,
	#superclass : #PackageManifest,
	#category : #'CPSC3220-Adventure-Manifest'
}

{ #category : #'code-critics' }
ManifestCPSC3220Adventure class >> ruleGuardingClauseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Game #executeCommand: #false)) #'2023-02-03T17:02:26.712693-05:00') )
]

{ #category : #'code-critics' }
ManifestCPSC3220Adventure class >> ruleReGuardClauseRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Game #executeCommand: #false)) #'2023-02-03T17:02:31.899303-05:00') )
]
