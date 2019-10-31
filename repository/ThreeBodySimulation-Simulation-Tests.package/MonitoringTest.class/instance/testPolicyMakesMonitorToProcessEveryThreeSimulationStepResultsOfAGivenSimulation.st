tests
testPolicyMakesMonitorToProcessEveryThreeSimulationStepResultsOfAGivenSimulation

	| monitor simulationStepResults simulation monitoringConsumer |
	simulationStepResults := OrderedCollection new.
	monitor := SimulationPluggableMonitor
		processResultsWith: [ :simulationStepResult | simulationStepResults add: simulationStepResult value ]
		andWhenFinishedDo: [ self monitoringHasFinished ].
	monitoringConsumer := SimulationMonitoringConsumer
		for: monitor
		every: (Duration milliSeconds: 50)
		basedOn: (StepResultsThresholdPolicyDefinition of: 3).
	simulation := self
		simulationGeneratingFrom: 0
		to: 10
		informingStepsTo: monitoringConsumer.
		
	self waitUntilMonitoringFinishesWhenRunning: simulation.
	
	self assert: simulationStepResults asArray equals: #(0 3 6 9)