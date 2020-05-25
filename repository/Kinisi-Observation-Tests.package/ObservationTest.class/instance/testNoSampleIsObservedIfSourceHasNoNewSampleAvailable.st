tests
testNoSampleIsObservedIfSourceHasNoNewSampleAvailable

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.
		
	source flush.
	self assertEmpty: processedSamples.
	observationProcess play.
	
	self assertNoNewSamplesAreBeingProcessedWhenTickingDelay.
	
	self feedNextSampleInto: source.
	self tickDelayForNextExpectedSampleAndWaitUntilItIsObserved.
	self denyEmpty: processedSamples.
	
	self assertNoNewSamplesAreBeingProcessedWhenTickingDelay