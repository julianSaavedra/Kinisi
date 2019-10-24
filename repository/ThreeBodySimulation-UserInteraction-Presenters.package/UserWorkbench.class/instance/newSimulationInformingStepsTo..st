support
newSimulationInformingStepsTo: stepConsumer

	^Simulation
		startingWith: initialState asUniverseState
		changingBy: [:stepDuration :currentState | (UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: simulationConfiguration stepDuration
		during: simulationConfiguration totalDuration
		informingStepsTo: stepConsumer