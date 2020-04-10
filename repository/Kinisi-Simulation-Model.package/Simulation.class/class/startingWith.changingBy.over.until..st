instance creation
startingWith: initialState changingBy: changingBlock over: stepDuration until: condition 

	^self
		startingWith: initialState
		changingBy: changingBlock
		over: stepDuration
		until: condition
		informingStepsTo: SimulationStepNullConsumer new