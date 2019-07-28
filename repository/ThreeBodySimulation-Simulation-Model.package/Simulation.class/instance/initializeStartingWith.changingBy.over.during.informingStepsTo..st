initialize
initializeStartingWith: aState changingBy: aBlock over: durationPerStep during: completeSimulationDuration informingStepsTo: aBuffer

	initialState := aState.
	changingBlock := aBlock.
	stepDuration := durationPerStep.
	simulationDuration := completeSimulationDuration.
	stepResults := OrderedCollection new.
	buffer := aBuffer