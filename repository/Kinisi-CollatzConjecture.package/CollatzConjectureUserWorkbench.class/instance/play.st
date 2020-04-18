action
play

	| simulation simulationConsumer |
	simulationConsumer := self simulationConsumer.
	simulation := Simulation
		startingWith: initialState
		changingBy: [:step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		over: 1
		until: [:step :currentState | currentState number = 1 ]
		informingStepsTo: simulationConsumer.
	simulation run.
	lastResult := simulation result