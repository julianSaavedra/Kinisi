initialize
initializeStartingWith: aState changingBy: aBlock over: durationPerStep during: completeSimulationDuration

	initialState := aState.
	changingBlock := aBlock.
	stepDuration := durationPerStep.
	simulationDuration := completeSimulationDuration.
	stepResults := OrderedCollection new