tests
testForwardedConsumerPerformsFinishActionWithSimulationResult

	| simulation endPointConsumer forwarder simulationTotalResult |
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStepResult | ]
		andWhenFinishedDo: [:simulationResult | simulationTotalResult := simulationResult ].
	forwarder := SimulationStepPolicyForwardingConsumer
		forwardTo: endPointConsumer
		basedOn: (StepResultsThresholdPolicyDefinition of: 3).
	simulation := self simulationInformingStepsTo: forwarder.

	simulation run.

	self assert: simulationTotalResult notNil