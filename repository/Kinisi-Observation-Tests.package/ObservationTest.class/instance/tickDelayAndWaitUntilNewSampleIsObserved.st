support - waiting
tickDelayAndWaitUntilNewSampleIsObserved

	| preTickProcessedSamples |
	preTickProcessedSamples := interfaceProcessedSamples copy.
	delay signal.
	[ [ interfaceProcessedSamples size > preTickProcessedSamples size ] whileFalse ]
		valueWithin: self oneSecond
		onTimeout: [ Error signal: 'Observation is not processing new samples (Timeout)' ]