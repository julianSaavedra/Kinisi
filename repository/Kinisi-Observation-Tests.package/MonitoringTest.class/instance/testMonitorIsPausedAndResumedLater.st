tests
testMonitorIsPausedAndResumedLater

	| monitoring |
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.
	
	monitoring play.
	self tickDelayForFirstExpectedDataElementAndWaitUntilItIsProcessed.
	
	monitoring pause.
	self tickDelayForAllRemainingData.
	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsProcessed ].
	
	monitoring play.
	self waitUntilLastExpectedDataIsProcessed.
	
	monitoring terminate.
	self
		assertCollection: allDataToBeMonitored
		hasSameElements: monitoredData