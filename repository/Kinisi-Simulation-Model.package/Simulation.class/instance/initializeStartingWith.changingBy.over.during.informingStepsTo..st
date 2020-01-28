initialize
initializeStartingWith: aState changingBy: aBlock over: durationPerStep during: completeSimulationDuration informingStepsTo: aConsumer

	initialState := aState.
	changingBlock := aBlock.
	stepDuration := durationPerStep.
	simulationDuration := completeSimulationDuration.
	stepResults := OrderedCollection new.
	consumer := aConsumer