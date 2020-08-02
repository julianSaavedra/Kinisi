test objects - support
workbenchWithDisableObservationUsing: interface

	| observationDefinition experimentDefinition |
	observationDefinition := self disableObservationDefinitionWith: interface.
	experimentDefinition := self experimentObservedBasedOn: observationDefinition.
	^ self workbenchWith: experimentDefinition