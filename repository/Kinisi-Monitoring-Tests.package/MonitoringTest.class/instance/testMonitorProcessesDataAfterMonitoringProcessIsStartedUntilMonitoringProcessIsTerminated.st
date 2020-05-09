tests
testMonitorProcessesDataAfterMonitoringProcessIsStartedUntilMonitoringProcessIsTerminated

	| monitoring |
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	self assertTimeoutWhen: [ self waitUntilFirstExpectedDataIsProcessed ].

	monitoring play.
	self tickDelayAndWaitMonitorProcessingForAllExpectedDataButLastElement.
	monitoring terminate.

	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsProcessed ]