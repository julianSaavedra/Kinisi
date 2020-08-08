acessing
experimentDefinition

	^ ExperimentDefinition
		startingAt: initialState
		changingWith: self change
		simulatingBasedOn: self steppingDefinition
		observingBasedOn: self observationDefinition