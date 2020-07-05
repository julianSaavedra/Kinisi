test objects - support
experimentDefinitionUsing: experimentChange observingBasedOn: observationDefinition

	^ExperimentDefinition
		basedOn: 1
		changingWith: experimentChange
		over: 1
		until: 5
		observingBasedOn: observationDefinition