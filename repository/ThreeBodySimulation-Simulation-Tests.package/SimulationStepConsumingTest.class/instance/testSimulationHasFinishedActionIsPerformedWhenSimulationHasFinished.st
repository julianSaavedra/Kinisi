tests
testSimulationHasFinishedActionIsPerformedWhenSimulationHasFinished

	| consumer simulationHasFinishedBlockWasPerformed simulation |

	consumer := SimulationStepPluggableConsumer
		onStartDo: [  ]
		processWith: [ :simulationStepResult |  ]
		andWhenFinishedDo: [ simulationHasFinishedBlockWasPerformed := true ].
	simulation := self simulationInformingStepsTo: consumer.
	simulationHasFinishedBlockWasPerformed := false.

	simulation run.

	self assert: simulationHasFinishedBlockWasPerformed