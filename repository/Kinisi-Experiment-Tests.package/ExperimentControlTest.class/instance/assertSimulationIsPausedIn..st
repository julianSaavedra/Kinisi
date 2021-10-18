asserting
assertSimulationIsPausedIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter simulationIsPaused