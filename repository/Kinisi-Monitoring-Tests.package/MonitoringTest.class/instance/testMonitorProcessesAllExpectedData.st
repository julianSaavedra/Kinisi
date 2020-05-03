tests
testMonitorProcessesAllExpectedData

	| monitoring |
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	self denyEmpty: allDataToBeMonitored.
	self assertEmpty: monitoredData.

	monitoring play.
	self tickDelayAndWaitMonitorProcessingForAllExpectedData.
	monitoring terminate.

	self
		assertCollection: allDataToBeMonitored
		hasSameElements: monitoredData