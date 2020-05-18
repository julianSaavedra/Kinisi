tests
testObservationIsPausedAndResumedLater

	| monitoring |
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.
	
	monitoring play.
	self tickDelayForFirstExpectedDataElementAndWaitUntilItIsObserved.
	
	monitoring pause.
	self tickDelayForAllRemainingData.
	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsObserved ].
	
	monitoring play.
	self waitUntilLastExpectedDataIsObserved.
	
	monitoring terminate.
	self
		assertCollection: allDataToBeObserved
		hasSameElements: observedData