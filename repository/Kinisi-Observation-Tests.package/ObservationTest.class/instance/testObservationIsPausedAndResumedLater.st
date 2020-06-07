tests
testObservationIsPausedAndResumedLater

	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.
	
	observationProcess play.
	self tickDelayForNextExpectedSampleAndWaitUntilItIsObserved.
	
	observationProcess pause.
	self tickDelayForAllRemainingSamples.
	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsObserved ].
	
	observationProcess play.
	self waitUntilLastExpectedDataIsObserved.
	
	observationProcess terminate.
	self
		assertCollection: allExpectedSamples
		hasSameElements: interfaceProcessedSamples