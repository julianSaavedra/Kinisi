test objects - support
experimentObservedBasedOn: observationDefinition

	^self
		experimentDefinitionUsing: [:state | state * 2 ]
		observingBasedOn: observationDefinition.