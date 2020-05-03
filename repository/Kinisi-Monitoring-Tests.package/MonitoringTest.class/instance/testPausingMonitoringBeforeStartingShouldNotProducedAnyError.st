tests
testPausingMonitoringBeforeStartingShouldNotProducedAnyError

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error