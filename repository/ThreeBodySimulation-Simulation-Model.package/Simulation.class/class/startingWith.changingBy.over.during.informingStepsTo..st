instance creation
startingWith: initialState changingBy: aBlock over: stepDuration during: simulationDuration informingStepsTo: aBuffer

	self assertValid: simulationDuration and: stepDuration. 
	^self new
		initializeStartingWith: initialState
		changingBy: aBlock
		over: stepDuration
		during: simulationDuration
		informingStepsTo: aBuffer