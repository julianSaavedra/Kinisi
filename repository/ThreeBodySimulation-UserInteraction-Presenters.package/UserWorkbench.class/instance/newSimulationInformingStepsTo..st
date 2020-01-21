support
newSimulationInformingStepsTo: stepConsumer

	^Simulation
		startingWith: initialState universeState
		changingBy: [:stepDuration :currentState | (UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: simulationConfiguration stepDuration
		during: simulationConfiguration totalDuration
		informingStepsTo: stepConsumer