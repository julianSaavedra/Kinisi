action
runExperimentUntilHasFinishedIn: lab withTimeout: maxDuration
 
	| experiment |
	experiment := lab newExperiment.
	experiment run.
	[
	[| statusInterpreter |
	0.05 seconds wait.
	statusInterpreter := ExperimentStatusTestInterpreter on: experiment status.
	statusInterpreter experimentHasEnded ] whileFalse ]
		valueWithin: maxDuration
		onTimeout: [ Error signal: 'Experiment is taking more than expected' ]