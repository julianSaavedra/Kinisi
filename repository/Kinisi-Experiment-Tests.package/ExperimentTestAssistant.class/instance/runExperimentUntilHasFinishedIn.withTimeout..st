test support
runExperimentUntilHasFinishedIn: lab withTimeout: maxDuration

	self
		runExperimentUntilHasFinished: lab newExperiment
		withTimeout: maxDuration