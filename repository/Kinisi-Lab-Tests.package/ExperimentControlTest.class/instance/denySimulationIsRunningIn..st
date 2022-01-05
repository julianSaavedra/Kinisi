asserting
denySimulationIsRunningIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self deny: statusInterpreter simulationIsRunning