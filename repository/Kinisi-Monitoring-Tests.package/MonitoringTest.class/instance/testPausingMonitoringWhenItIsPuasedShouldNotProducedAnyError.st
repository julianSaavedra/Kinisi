tests
testPausingMonitoringWhenItIsPuasedShouldNotProducedAnyError

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring play; pause.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error