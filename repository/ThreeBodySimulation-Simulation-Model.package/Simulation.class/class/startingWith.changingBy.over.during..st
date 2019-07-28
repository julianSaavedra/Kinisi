instance creation
startingWith: initialState changingBy: aBlock over: stepDuration during: simulationDuration

	^self
		startingWith: initialState
		changingBy: aBlock
		over: stepDuration
		during: simulationDuration
		informingStepsTo: SimulationStepResultBuffer null