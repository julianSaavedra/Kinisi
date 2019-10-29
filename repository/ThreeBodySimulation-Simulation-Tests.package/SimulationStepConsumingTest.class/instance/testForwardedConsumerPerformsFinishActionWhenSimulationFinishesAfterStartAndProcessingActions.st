tests
testForwardedConsumerPerformsFinishActionWhenSimulationFinishesAfterStartAndProcessingActions

	| finishActionWasPerformedAfterStartAndProcessAction simulation endPointConsumer forwarder processingActionWasPerfomed startActionWasPerfomed |
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStepResult | processingActionWasPerfomed := true ]
		onStartDo: [ startActionWasPerfomed := true ]
		andWhenFinishedDo: [ finishActionWasPerformedAfterStartAndProcessAction := true and: [ startActionWasPerfomed and: [ processingActionWasPerfomed ] ] ].
	forwarder := SimulationStepPolicyForwardingConsumer
		forwardTo: endPointConsumer
		every: 3.
	simulation := self simulationInformingStepsTo: forwarder.
	processingActionWasPerfomed := false.
	startActionWasPerfomed := false.
	finishActionWasPerformedAfterStartAndProcessAction := false.

	simulation run.

	self assert: finishActionWasPerformedAfterStartAndProcessAction