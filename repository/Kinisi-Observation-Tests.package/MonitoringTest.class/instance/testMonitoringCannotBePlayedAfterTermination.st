tests
testMonitoringCannotBePlayedAfterTermination

	| monitoring |
	monitoring := KinisiMonitor on: source with: monitor waiting: delay.
	monitoring terminate.
	
	self
		should: [ monitoring play ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Monitoring has been terminated'