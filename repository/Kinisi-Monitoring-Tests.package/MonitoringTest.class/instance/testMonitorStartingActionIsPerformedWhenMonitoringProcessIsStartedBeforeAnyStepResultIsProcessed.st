tests
testMonitorStartingActionIsPerformedWhenMonitoringProcessIsStartedBeforeAnyStepResultIsProcessed

	| monitor monitoringProcess startActionWasPerformed anyStepResultWasProcess |
	monitor := DataPluggableMonitor
		onStartDo: [startActionWasPerformed := true and: [anyStepResultWasProcess not]]
		processResultsWith: [:simulationResult | anyStepResultWasProcess := true ].
	monitoringProcess := SimulationMonitoringProcess from: Buffer new to: monitor every: (Duration milliSeconds: 100).

	anyStepResultWasProcess := false.
	startActionWasPerformed := false.
	monitoringProcess start.
	self assert: startActionWasPerformed.
	monitoringProcess terminate