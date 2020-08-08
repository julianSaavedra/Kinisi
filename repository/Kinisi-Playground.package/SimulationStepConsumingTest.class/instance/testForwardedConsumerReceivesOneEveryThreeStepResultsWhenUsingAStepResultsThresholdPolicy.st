tests
testForwardedConsumerReceivesOneEveryThreeStepResultsWhenUsingAStepResultsThresholdPolicy

	| simulation forwardedSimulationStepResults endPointConsumer threePackagesPolicyForwarder |
	forwardedSimulationStepResults := OrderedCollection new.
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | forwardedSimulationStepResults add: simulationStep value ].
	threePackagesPolicyForwarder := SimulationStepPolicyForwardingConsumer forwardTo: endPointConsumer basedOn: (StepResultsThresholdPolicyDefinition of: 3).
	simulation := self
		simulationGeneratingFrom: 0 to: 10
		informingStepsTo: threePackagesPolicyForwarder.
		
	simulation run.

	self assert: forwardedSimulationStepResults asArray equals: #(0 3 6 9)