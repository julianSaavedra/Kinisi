support
waitUnilIsFinished: experiment

	[
	[| statusInterpreter |
	0.05 seconds wait.
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	statusInterpreter experimentHasEnded ] whileFalse ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ]