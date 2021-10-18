support
waitUnilIsFinished: experiment

	[
	[0.05 seconds wait. experiment hasEnded ] whileFalse ]
		valueWithin: 3 seconds
		onTimeout: [ self fail ]