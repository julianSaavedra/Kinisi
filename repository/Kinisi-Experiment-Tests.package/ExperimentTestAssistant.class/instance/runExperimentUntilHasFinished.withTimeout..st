test support
runExperimentUntilHasFinished: experiment withTimeout: maxDuration

	experiment run.
	[ [0.05 seconds wait. experiment hasEnded  ] whileFalse ]
		valueWithin: maxDuration
		onTimeout: [ Error signal: 'Experiment is taking more than expected' ]