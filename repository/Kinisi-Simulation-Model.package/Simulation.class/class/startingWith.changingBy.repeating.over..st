instance creation
startingWith: initialState changingBy: aBlock repeating: times over: stepDuration

	^self
		startingWith: initialState
		changingBy: aBlock
		repeating: times
		over: stepDuration
		informingResultsTo: SimulationStepNullConsumer new