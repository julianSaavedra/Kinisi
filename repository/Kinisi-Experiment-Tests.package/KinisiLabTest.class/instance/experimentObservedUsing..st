test objects - support
experimentObservedUsing: interface

	| observationDefinition |
	observationDefinition := self observationDefinitionWith: interface.
	^self experimentObservedBasedOn: observationDefinition