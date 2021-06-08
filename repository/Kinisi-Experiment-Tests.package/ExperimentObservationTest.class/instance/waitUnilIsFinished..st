support
waitUnilIsFinished: observationRecorder

	[ observationRecorder wait ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ]