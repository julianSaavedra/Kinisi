tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminated

	| monitor monitoringProcess finishActionWasPerformed |
	monitor := SimulationPluggableMonitor
		onStartDo: []
		processResultsWith: [:simulationResult |]
		andWhenFinishedDo: [finishActionWasPerformed := true].
	monitoringProcess := SimulationMonitoringProcess from: Buffer new to: monitor every: (Duration milliSeconds: 100).

	finishActionWasPerformed := false.
	monitoringProcess start.
	monitoringProcess terminate.
	self assert: finishActionWasPerformed.
