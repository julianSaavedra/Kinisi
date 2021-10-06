asserting
assertSimulationHasNotStartedIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter simulationHasNotStarted