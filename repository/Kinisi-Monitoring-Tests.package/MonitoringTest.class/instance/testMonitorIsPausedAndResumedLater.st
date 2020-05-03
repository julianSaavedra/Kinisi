tests
testMonitorIsPausedAndResumedLater

	| monitoring |
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.
	
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