tests
testSimulationHasFinishedActionIsPerformedWhenSimulationHasFinished

	| consumer simulationHasFinishedBlockWasPerformed simulation |

	consumer := SimulationStepPluggableConsumer
		processWith: [ :simulationStepResult |  ]
		ifFinishedDo: [ simulationHasFinishedBlockWasPerformed := true ].
	simulation := self simulationInformingStepsTo: consumer.
	simulationHasFinishedBlockWasPerformed := false.

	simulation run.

	self assert: simulationHasFinishedBlockWasPerformed