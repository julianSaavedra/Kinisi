action
play

	| simulation |
	simulation := Simulation
		startingWith: initialState
		changingBy: [:step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		until: [:step :currentState | currentState number = 1 ].
	simulation run.
	lastResult := simulation result