asserting
assertSimulationHasEndedIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter simulationHasEnded