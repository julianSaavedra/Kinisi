tests
testPausingMonitoringBeforeStartingShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiMonitor on: source with: monitor waiting: delay.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error