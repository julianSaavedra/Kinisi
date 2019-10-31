tests
testMonitorFinishingActionIsPerformedAfterTheSimulationHasEnded

	| monitor finishActionWasPerformed simulation monitoringConsumer |
	monitor := SimulationPluggableMonitor
		processResultsWith: [:simulationStepResult | ]
		andWhenFinishedDo: [ self monitoringHasFinished. finishActionWasPerformed := true ].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	simulation := self
		simulationGenerating: 3
		stepsInformingThemTo: monitoringConsumer.
	
	finishActionWasPerformed := false.
	self waitUntilMonitoringFinishesWhenRunning: simulation.
	
	self assert: finishActionWasPerformed