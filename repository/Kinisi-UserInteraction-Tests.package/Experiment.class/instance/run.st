running
run

	| simulation |
	simulation := Simulation
		startingWith: definition initialState
		changingBy: definition change
		over: definition stepDelta
		during: definition duration.
	
	simulation run.
	result := simulation result