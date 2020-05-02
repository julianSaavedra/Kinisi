tests
testMonitorIsPausedAndResumedLater

	| monitoring |
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.
	
	monitoring start.
	self tickDelayForFirstExpectedDataElementAndWaitUntilItIsProcessed.
	
	monitoring pause.
	self tickDelayForAllRemainingData.
	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsProcessed ].
	
	monitoring resume.
	self waitUntilLastExpectedDataIsProcessed.
	
	monitoring terminate.
	self
		assertCollection: allDataToBeMonitored
		hasSameElements: monitoredData