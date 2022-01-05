asserting
assertExperimentHasNotStartedIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter experimentHasNotStarted