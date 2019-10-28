tests
testMonitorStartingActionIsPerformedWhenMonitoringProcessIsStarted

	| monitor monitoringProcess startActionWasPerformed |
	monitor := SimulationPluggableMonitor
		onStartDo: [startActionWasPerformed := true]
		processResultsWith: [:simulationResult |].
	monitoringProcess := SimulationMonitoringProcess from: Buffer new to: monitor every: (Duration milliSeconds: 100).

	startActionWasPerformed := false.
	monitoringProcess start.
	self assert: startActionWasPerformed.
	monitoringProcess terminate