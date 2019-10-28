tests
testSimulationHasFinishedActionIsPerformedWhenSimulationHasFinishedWhenUsingAForwardingConsumer

	| simulationHasFinishedBlockWasPerformed simulation endPointConsumer forwarder |
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [ :simulationStepResult |  ]
		ifFinishedDo: [ simulationHasFinishedBlockWasPerformed := true ].
	forwarder := SimulationStepPolicyForwardingConsumer forwardTo: endPointConsumer every: 3.
	simulation := self simulationInformingStepsTo: forwarder.
	simulationHasFinishedBlockWasPerformed := false.

	simulation run.

	self assert: simulationHasFinishedBlockWasPerformed