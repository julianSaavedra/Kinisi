tests
testMonitorProcessesAllExpectedData

	| monitoring |
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	self denyEmpty: allDataToBeMonitored.
	self assertEmpty: monitoredData.

	monitoring play.
	self tickDelayAndWaitMonitorProcessingForAllExpectedData.
	monitoring terminate.

	self
		assertCollection: allDataToBeMonitored
		hasSameElements: monitoredData