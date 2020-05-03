tests
testMonitoringCannotBePlayedAfterTermination

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring terminate.
	
	self
		should: [ monitoring play ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Monitoring has been terminated'