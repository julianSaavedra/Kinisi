tests
testPausingMonitoringWhenItIsPuasedShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiMonitor on: source with: monitor waiting: delay.
	monitoring play; pause.
	
	self
		shouldnt: [ monitoring pause ]
		raise: Error