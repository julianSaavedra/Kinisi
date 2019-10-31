tests
testStepResultsThresholdPolicyDefinitionCannotBeCreatedWithNegativeThreshold

	self
		should: [ StepResultsThresholdPolicyDefinition of: -1 ]
		raise: SimulationError
		whoseDescriptionIncludes: 'Threshold cannot be negative'