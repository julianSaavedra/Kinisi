tests
testForwardedConsumerPerformsStartActionWhenSimulationStartsBeforeAnyResultIsConsumed

	| simulation endPointConsumer forwarder noResultWasProcessYet startActionWasPerformedBeforeAnyResult |

	endPointConsumer := SimulationStepPluggableConsumer
		onStartDo: [ startActionWasPerformedBeforeAnyResult := true
				and: [ noResultWasProcessYet ] ]
		processWith: [ :simulationStepResult | noResultWasProcessYet := false ]
		andWhenFinishedDo: [  ].
	forwarder := SimulationStepPolicyForwardingConsumer
		forwardTo: endPointConsumer
		basedOn: (StepResultsThresholdPolicyDefinition of: 1).
	simulation := self simulationInformingStepsTo: forwarder.
	noResultWasProcessYet := true.

	simulation run.

	self assert: startActionWasPerformedBeforeAnyResult