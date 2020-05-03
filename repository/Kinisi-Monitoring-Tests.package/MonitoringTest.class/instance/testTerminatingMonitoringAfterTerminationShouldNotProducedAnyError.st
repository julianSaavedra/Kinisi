tests
testTerminatingMonitoringAfterTerminationShouldNotProducedAnyError

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring terminate.
	
	self
		shouldnt: [ monitoring terminate ]
		raise: Error