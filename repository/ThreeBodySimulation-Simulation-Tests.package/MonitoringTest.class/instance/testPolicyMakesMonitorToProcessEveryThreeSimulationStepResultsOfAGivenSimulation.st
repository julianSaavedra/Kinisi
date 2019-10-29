tests
testPolicyMakesMonitorToProcessEveryThreeSimulationStepResultsOfAGivenSimulation

	| monitor simulationStepResults simulation monitoringConsumer monitoringHasFinished |
	simulationStepResults := OrderedCollection new.
	monitor := SimulationPluggableMonitor
		processResultsWith: [:simulationStepResult | simulationStepResults add: simulationStepResult value ]
		andWhenFinishedDo: [monitoringHasFinished := true].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	
	simulation := self
		simulationGeneratingFrom: 0 to: 10
		informingStepsTo: monitoringConsumer.

	monitoringHasFinished := false.
	simulation run.
	[monitoringHasFinished] whileFalse.
	self assert: simulationStepResults asArray equals: #(0 3 6 9)