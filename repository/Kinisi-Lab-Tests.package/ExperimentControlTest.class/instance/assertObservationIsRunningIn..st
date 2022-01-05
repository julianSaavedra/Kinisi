asserting
assertObservationIsRunningIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter observationIsRunning