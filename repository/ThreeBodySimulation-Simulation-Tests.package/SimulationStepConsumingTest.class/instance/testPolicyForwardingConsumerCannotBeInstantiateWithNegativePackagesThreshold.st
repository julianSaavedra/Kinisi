tests
testPolicyForwardingConsumerCannotBeInstantiateWithNegativePackagesThreshold

	self
		should: [ SimulationStepPolicyForwardingConsumer forwardTo: SimulationStepNullConsumer new every: -3 ]
		raise: SimulationError
		whoseDescriptionIncludes: 'Package threshold cannot be negative'
		description: 'Expected error did not happen'