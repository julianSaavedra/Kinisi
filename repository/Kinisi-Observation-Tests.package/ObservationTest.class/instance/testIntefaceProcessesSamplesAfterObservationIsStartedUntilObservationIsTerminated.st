tests
testIntefaceProcessesSamplesAfterObservationIsStartedUntilObservationIsTerminated

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self assertEmpty: interfaceProcessedSamples.
	self assertNoNewSampleIsProcessedWhenTickingDelay.

	observationProcess play.
	
	self tickDelayAndWaitObservationOfAllExpectedSamplesButLast.
	self denyEmpty: interfaceProcessedSamples.
	
	observationProcess terminate.

	self denyEmpty: pendingSamples.
	self assertNextExpectedSampeIsNotProcessedWhenTickingDelay