deprecated
startingWith: initialState changingBy: aBlock repeating: times over: stepDuration informingResultsTo: consumer

	^self
		startingWith: initialState
		changingBy: aBlock
		over: stepDuration
		during: stepDuration * times
		informingStepsTo: consumer