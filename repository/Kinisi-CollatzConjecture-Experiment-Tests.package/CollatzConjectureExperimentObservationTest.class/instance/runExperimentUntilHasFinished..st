support
runExperimentUntilHasFinished: experiment
 
	ExperimentTestAssistant new
		runExperimentUntilHasFinished: experiment
		withTimeout: period * 15