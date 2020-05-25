tests
testIntefaceProcessesSamplesAfterObservationIsStartedUntilObservationIsTerminated

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self assertEmpty: processedSamples.
	self assertNoNewSamplesAreBeingProcessedWhenTickingDelay.

	observationProcess play.
	
	self tickDelayAndWaitObservationOfAllExpectedSamplesButLast.
	self denyEmpty: processedSamples.
	
	observationProcess terminate.

	self assertNoNewSamplesAreBeingProcessedWhenTickingDelay