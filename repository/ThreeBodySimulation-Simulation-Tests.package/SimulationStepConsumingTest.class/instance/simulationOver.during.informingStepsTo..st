support
simulationOver: singleStepDuration during: totalDuration informingStepsTo: consumer

	^Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: singleStepDuration
		during: totalDuration
		informingStepsTo: consumer