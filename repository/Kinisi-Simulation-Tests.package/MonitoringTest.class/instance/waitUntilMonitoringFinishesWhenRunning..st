tests
waitUntilMonitoringFinishesWhenRunning: simulation

	self waitUntilMonitoringFinishesAfter: [ simulation run ]