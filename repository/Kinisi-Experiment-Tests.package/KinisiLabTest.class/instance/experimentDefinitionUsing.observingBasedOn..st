test objects - support
experimentDefinitionUsing: experimentChange observingBasedOn: observationDefinition

	^ExperimentDefinition
		startingAt: 1
		changingWith: (SimulationStateChange with: experimentChange)
		simulatingBasedOn: (SteppingDefinition repeat: 5)
		observingBasedOn: observationDefinition