experiment
performExperiment

	| simulation |
	simulation := Simulation startingWith: 1 changingBy: [:step :currentPower | currentPower * 2 ] over: 1 during: 5.
	
	simulation run.
	
	lastResult := simulation result