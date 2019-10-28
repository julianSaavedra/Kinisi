tests
testSimulationHasFinishedActionIsPerformedWithSimulationTotalResultAsArgumentWhenSimulationHasFinished

	| consumer simulationTotalResult simulation |
	consumer := SimulationStepPluggableConsumer
		processWith: [:simulationStepResult |  ]
		ifFinishedDo: [:simulationResult | simulationTotalResult := simulationResult ].
	simulation := self simulationInformingStepsTo: consumer.

	simulation run.

	self assert: simulationTotalResult notNil