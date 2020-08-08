tests
testForwardedConsumerReceivesAllStepResultsWhenUsingAForwardAllPolicyDefinition

	| simulation forwardedSimulationStepResults endPointConsumer threePackagesPolicyForwarder |
	forwardedSimulationStepResults := OrderedCollection new.
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | forwardedSimulationStepResults add: simulationStep value ].
	threePackagesPolicyForwarder := SimulationStepPolicyForwardingConsumer forwardTo: endPointConsumer basedOn: ForwardAllPolicyDefinition new.
	simulation := self
		simulationGeneratingFrom: 0 to: 6
		informingStepsTo: threePackagesPolicyForwarder.
		
	simulation run.

	self assert: forwardedSimulationStepResults asArray equals: #(0 1 2 3 4 5 6)