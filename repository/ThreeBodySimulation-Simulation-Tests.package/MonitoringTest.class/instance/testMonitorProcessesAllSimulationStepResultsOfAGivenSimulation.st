tests
testMonitorProcessesAllSimulationStepResultsOfAGivenSimulation

	| monitor simulationStepResults simulation monitoringConsumer |
	simulationStepResults := OrderedCollection new.
	monitor := SimulationPluggableMonitor processResultsWith: [:simulationStepResult | simulationStepResults add: simulationStepResult value ].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	
	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: monitoringConsumer.

	simulation run.
	(Duration milliSeconds: 200) wait.
	self assert: simulationStepResults asArray equals: #(0 1 2)