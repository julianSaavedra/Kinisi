support
waitUnilIsFinished: observationRecorder

	[ 0.05 seconds wait.
	observationRecorder wait ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ]