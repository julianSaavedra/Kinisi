tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminated

	| monitor monitoringProcess finishActionWasPerformed |
	monitor := DataPluggableMonitor
		processResultsWith: [:simulationResult |]
		andWhenFinishedDo: [finishActionWasPerformed := true].
	monitoringProcess := SimulationMonitoringProcess from: Buffer new to: monitor every: (Duration milliSeconds: 100).

	monitoringProcess start.
	monitoringProcess terminate.
	
	self assert: finishActionWasPerformed.
