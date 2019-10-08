instance creation
startingWith: initialState changingBy: aBlock over: stepDuration during: simulationDuration informingStepsTo: consumer

	self assertValid: simulationDuration and: stepDuration. 
	^self new
		initializeStartingWith: initialState
		changingBy: aBlock
		over: stepDuration
		during: simulationDuration
		informingStepsTo: consumer