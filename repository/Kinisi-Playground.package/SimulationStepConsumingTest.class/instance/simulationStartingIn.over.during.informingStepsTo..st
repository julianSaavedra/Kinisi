support
simulationStartingIn: initialState over: singleStepDuration during: totalDuration informingStepsTo: consumer

	^Simulation
		startingWith: initialState
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: singleStepDuration
		during: totalDuration
		informingStepsTo: consumer