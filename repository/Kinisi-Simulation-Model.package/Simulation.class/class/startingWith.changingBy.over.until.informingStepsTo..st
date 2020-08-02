deprecated
startingWith: initialState changingBy: changingBlock over: stepDuration until: condition informingStepsTo: consumer

	^self new
		initializeStartingWith: initialState
		changingBy: changingBlock
		over: stepDuration
		until: condition
		informingStepsTo: consumer