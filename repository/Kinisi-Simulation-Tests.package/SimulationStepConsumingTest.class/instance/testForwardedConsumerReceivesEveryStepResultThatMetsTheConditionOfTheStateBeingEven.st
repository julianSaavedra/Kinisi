tests
testForwardedConsumerReceivesEveryStepResultThatMetsTheConditionOfTheStateBeingEven

	| simulation forwardedSimulationStepResults endPointConsumer threePackagesPolicyForwarder |
	forwardedSimulationStepResults := OrderedCollection new.
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | forwardedSimulationStepResults add: simulationStep value ].
	threePackagesPolicyForwarder := SimulationStepPolicyForwardingConsumer forwardTo: endPointConsumer basedOn: (StepResultConditionPolicyDefinition on: [:stepResult | stepResult value even]).
	simulation := self
		simulationGeneratingFrom: 0 to: 10
		informingStepsTo: threePackagesPolicyForwarder.
		
	simulation run.

	self assert: forwardedSimulationStepResults asArray equals: #(0 2 4 6 8 10)