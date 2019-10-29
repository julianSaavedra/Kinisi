tests
testForwardedConsumerPerformsStartActionWhenSimulationStartsBeforeAnyResultIsConsumed

	| simulation endPointConsumer forwarder noResultWasProcessYet startActionWasPerformedBeforeAnyResult |
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStepResult | noResultWasProcessYet := false ]
		onStartDo: [ startActionWasPerformedBeforeAnyResult := true and: [ noResultWasProcessYet ]]
		andWhenFinishedDo: [].
	forwarder := SimulationStepPolicyForwardingConsumer
		forwardTo: endPointConsumer
		every: 3.
	simulation := self simulationInformingStepsTo: forwarder.
	noResultWasProcessYet := true.

	simulation run.

	self assert: startActionWasPerformedBeforeAnyResult