tests
testSimulationHasFinishedActionIsPerformedWhenSimulationHasFinished

	| consumer simulationHasFinishedBlockWasPerformed simulation |
	consumer := SimulationStepPluggableConsumer
		do: [:simulationStepResult |  ]
		ifFinishedDo: [ simulationHasFinishedBlockWasPerformed := true ].
	simulation := self simulationInformingStepsTo: consumer.
	simulationHasFinishedBlockWasPerformed := false.

	simulation run.

	self assert: simulationHasFinishedBlockWasPerformed