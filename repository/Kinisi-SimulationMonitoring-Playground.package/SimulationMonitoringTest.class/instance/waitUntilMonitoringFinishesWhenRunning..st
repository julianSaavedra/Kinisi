tests - simulation coupled
waitUntilMonitoringFinishesWhenRunning: simulation

	self waitUntilMonitoringFinishesAfter: [ simulation run ]