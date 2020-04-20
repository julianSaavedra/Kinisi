tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminated

	| monitor monitoring finishActionWasPerformed delay |
	monitor := DataPluggableMonitor
		processResultsWith: [:data | ]
		andWhenFinishedDo: [finishActionWasPerformed := true].
	delay := Semaphore new.
	monitoring := MonitoringProcess reading: Buffer new for: monitor every: delay.

	monitoring start.
	monitoring terminate.
	
	self assert: finishActionWasPerformed.
