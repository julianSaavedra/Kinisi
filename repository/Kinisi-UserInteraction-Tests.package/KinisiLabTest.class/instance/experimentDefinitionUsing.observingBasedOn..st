test objects - support
experimentDefinitionUsing: experimentChange observingBasedOn: observationDefinition

	^ExperimentDefinition
		startingAt: 1
		changingWith: experimentChange
		simulatingBasedOn: (BANANASteppingMode delta: 1 until: 5)
		observingBasedOn: observationDefinition