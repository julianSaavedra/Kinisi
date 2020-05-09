tests - simulation coupled
testMonitorFinishingActionIsPerformedAfterTheSimulationHasEnded

	| monitor finishActionWasPerformed simulation monitoringConsumer |
	monitor := PluggableMonitorInterface
		processWith: [:simulationStepResult | ]
		andWhenFinishedDo: [ self monitoringHasFinished. finishActionWasPerformed := true ].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	simulation := self
		simulationGenerating: 3
		stepsInformingThemTo: monitoringConsumer.
	
	self waitUntilMonitoringFinishesWhenRunning: simulation.
	
	self assert: finishActionWasPerformed