tests
testMonitoringCannotBePausedAfterTermination

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring terminate.
	
	self
		should: [ monitoring pause ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Monitoring has been terminated'