actions
start

	| simulation |
	simulation := self newSimulation.
	simulation run.
	
	simulation result inspect