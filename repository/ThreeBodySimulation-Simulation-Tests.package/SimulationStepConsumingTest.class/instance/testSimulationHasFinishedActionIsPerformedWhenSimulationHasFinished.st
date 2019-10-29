tests
testSimulationHasFinishedActionIsPerformedWhenSimulationHasFinished

	| consumer simulationHasFinishedBlockWasPerformed simulation |
	consumer := SimulationStepPluggableConsumer
		processWith: [ :simulationStepResult |  ]
		onStartDo: []
		andWhenFinishedDo: [ simulationHasFinishedBlockWasPerformed := true ].
	simulation := self simulationInformingStepsTo: consumer.
	simulationHasFinishedBlockWasPerformed := false.

	simulation run.

	self assert: simulationHasFinishedBlockWasPerformed