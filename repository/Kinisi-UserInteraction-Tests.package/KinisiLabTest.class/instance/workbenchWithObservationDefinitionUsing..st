test objects - support
workbenchWithObservationDefinitionUsing: interface
 
	| experimentDefinition |
	experimentDefinition := self experimentObservedUsing: interface.
	^self workbenchWith: experimentDefinition.