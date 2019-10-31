test objects
simulationGeneratingFrom: initialState to: finalState informingStepsTo: consumer

	| oneSecond |
	oneSecond := UnitProvider soleInstance second with: 1.
	^Simulation
		startingWith: initialState
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: oneSecond
		during: oneSecond * (finalState - initialState)
		informingStepsTo: consumer