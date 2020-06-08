tests
testMonitoringCannotBePausedAfterTermination

	| monitoring |
	monitoring := KinisiMonitor on: source with: monitor waiting: delay.
	monitoring terminate.
	
	self
		should: [ monitoring pause ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Monitoring has been terminated'