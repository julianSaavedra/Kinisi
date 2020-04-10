initialization
initializeStartingWith: aState changingBy: aBlock over: anStepDuration until: aCondition informingStepsTo: aConsumer

	initialState := aState.
	change := aBlock.
	endCondition := aCondition.
	stepDelta := anStepDuration.
	consumer := aConsumer.
	self resetResults