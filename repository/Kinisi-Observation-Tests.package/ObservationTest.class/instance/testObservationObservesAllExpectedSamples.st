tests
testObservationObservesAllExpectedSamples

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self denyEmpty: allExpectedSamples.
	self assertEmpty: processedSamples.

	observationProcess play.
	self tickDelayAndWaitProcessingOfAllPendingSamples.
	observationProcess terminate.

	self
		assertCollection: allExpectedSamples
		hasSameElements: processedSamples