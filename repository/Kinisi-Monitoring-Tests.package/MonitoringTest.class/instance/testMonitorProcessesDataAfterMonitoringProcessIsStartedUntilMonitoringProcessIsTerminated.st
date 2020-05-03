tests
testMonitorProcessesDataAfterMonitoringProcessIsStartedUntilMonitoringProcessIsTerminated

	| monitoring |
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	self assertTimeoutWhen: [ self waitUntilFirstExpectedDataIsProcessed ].

	monitoring play.
	self tickDelayAndWaitMonitorProcessingForAllExpectedDataButLastElement.
	monitoring terminate.

	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsProcessed ]