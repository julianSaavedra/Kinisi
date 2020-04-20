tests - simulation coupled
waitUntilMonitoringFinishesAfter: block

	self resetFinishedMonitoringFlag.
	block value.
	self waitUntilMonitoringFinishes