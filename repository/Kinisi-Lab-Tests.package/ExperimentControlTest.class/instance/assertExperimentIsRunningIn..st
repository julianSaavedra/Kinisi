asserting
assertExperimentIsRunningIn: experiment

	| statusInterpreter |
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	self assert: statusInterpreter experimentIsRunning