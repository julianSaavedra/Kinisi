no senders - review
experimentDefinition

	^ExperimentDefinition
		startingAt: 1
		changingWith: (SimulationStateChange with: [ :state | state * 2 ])
		simulatingBasedOn: (SteppingDefinition repeat: 5)
		observingBasedOn: ObservationDefinition withNoInterfaceDefinitions