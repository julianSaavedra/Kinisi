tests
testObservationObservesAllExpectedSamples

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self denyEmpty: allExpectedSamples.
	self assertEmpty: interfaceProcessedSamples.

	observationProcess play.
	self tickDelayAndWaitProcessingOfAllPendingSamples.
	observationProcess terminate.

	self
		assertCollection: allExpectedSamples
		hasSameElements: interfaceProcessedSamples