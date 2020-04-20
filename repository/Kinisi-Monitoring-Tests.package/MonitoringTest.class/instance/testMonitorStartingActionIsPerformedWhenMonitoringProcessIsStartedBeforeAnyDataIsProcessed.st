tests
testMonitorStartingActionIsPerformedWhenMonitoringProcessIsStartedBeforeAnyDataIsProcessed

	| monitor monitoring startActionWasPerformed anyDataWasProcessed delay |
	monitor := DataPluggableMonitor
		onStartDo: [startActionWasPerformed := true and: [anyDataWasProcessed not]]
		processResultsWith: [:data | anyDataWasProcessed := true ].
	delay := Semaphore new.
	monitoring := MonitoringProcess reading: Buffer new for: monitor every: delay.

	anyDataWasProcessed := false.
	startActionWasPerformed := false.
	monitoring start.
	
	self assert: startActionWasPerformed.
	monitoring terminate