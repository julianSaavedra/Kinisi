tests
testMonitorFinishingActionIsPerformedAfterTheSimulationHasEnded

	| monitor finishActionWasPerformed simulation monitoringConsumer |
	monitor := SimulationPluggableMonitor
		onStartDo: []
		processResultsWith: [:simulationStepResult | ]
		andWhenFinishedDo: [finishActionWasPerformed := true].
		
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	
	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: monitoringConsumer.
	
	finishActionWasPerformed := false.
	simulation run.
	
	(Duration milliSeconds: 400) wait.
	self assert: finishActionWasPerformed