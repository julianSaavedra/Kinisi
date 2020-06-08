tests
testTerminatingMonitoringAfterTerminationShouldNotProducedAnyError

	| monitoring |
	monitoring := KinisiMonitor on: source with: monitor waiting: delay.
	monitoring terminate.
	
	self
		shouldnt: [ monitoring terminate ]
		raise: Error