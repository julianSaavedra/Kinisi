tests
testStepResultsThresholdPolicyDefinitionCannotBeCreatedWithNegativeThreshold

	self
		should: [ StepResultsThresholdPolicyDefinition of: -1 ]
		raise: SimulationError
		whoseDescriptionIncludes: 'Threshold cannot be negative'
		description: 'Test did not fail as expected.' 
		