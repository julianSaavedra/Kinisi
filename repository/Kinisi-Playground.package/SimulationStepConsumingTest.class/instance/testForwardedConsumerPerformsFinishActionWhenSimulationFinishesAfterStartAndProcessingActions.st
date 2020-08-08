tests
testForwardedConsumerPerformsFinishActionWhenSimulationFinishesAfterStartAndProcessingActions

	| finishActionWasPerformedAfterStartAndProcessAction simulation endPointConsumer forwarder processingActionWasPerfomed startActionWasPerfomed |

	endPointConsumer := SimulationStepPluggableConsumer
		onStartDo: [ startActionWasPerfomed := true ]
		processWith: [ :simulationStepResult | processingActionWasPerfomed := true ]
		andWhenFinishedDo: [ finishActionWasPerformedAfterStartAndProcessAction := true
				and: [ startActionWasPerfomed and: [ processingActionWasPerfomed ] ] ].
	forwarder := SimulationStepPolicyForwardingConsumer
		forwardTo: endPointConsumer
		basedOn: (StepResultsThresholdPolicyDefinition of: 3).
	simulation := self simulationInformingStepsTo: forwarder.
	processingActionWasPerfomed := false.
	startActionWasPerfomed := false.
	finishActionWasPerformedAfterStartAndProcessAction := false.

	simulation run.

	self assert: finishActionWasPerformedAfterStartAndProcessAction