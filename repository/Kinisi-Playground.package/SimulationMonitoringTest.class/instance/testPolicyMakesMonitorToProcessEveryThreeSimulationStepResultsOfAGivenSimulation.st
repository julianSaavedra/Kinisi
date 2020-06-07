tests - simulation coupled
testPolicyMakesMonitorToProcessEveryThreeSimulationStepResultsOfAGivenSimulation

	| monitor simulationStepResults simulation monitoringConsumer |
	simulationStepResults := OrderedCollection new.
	monitor := PluggableObservationInterface
		processWith: [ :simulationStepResult | simulationStepResults add: simulationStepResult value ]
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
	
	self
		assertCollection: simulationStepResults
		hasSameElements: #(0 3 6 9)