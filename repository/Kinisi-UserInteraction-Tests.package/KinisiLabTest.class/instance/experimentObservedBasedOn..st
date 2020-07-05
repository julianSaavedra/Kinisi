test objects - support
experimentObservedBasedOn: observationDefinition

	^self
		experimentDefinitionUsing: [ :step :currentState | currentState * 2 ]
		observingBasedOn: observationDefinition.