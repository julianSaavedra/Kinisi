asserting
assertSimulationIsRunningIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter simulationIsRunning