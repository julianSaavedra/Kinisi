tests
waitUntilMonitoringFinishesAfter: block

	self resetFinishedMonitoringFlag.
	block value.
	self waitUntilMonitoringFinishes