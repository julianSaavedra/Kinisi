tests
testMonitoringCannotBeStartedAfterTermination

	| monitoring |
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring terminate.
	
	self
		should: [ monitoring start ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Monitoring has been terminated'