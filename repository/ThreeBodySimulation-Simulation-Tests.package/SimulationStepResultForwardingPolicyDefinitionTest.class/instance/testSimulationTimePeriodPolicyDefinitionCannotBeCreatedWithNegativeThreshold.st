tests
testSimulationTimePeriodPolicyDefinitionCannotBeCreatedWithNegativeThreshold

	| negativeTime |
	negativeTime := UnitProvider soleInstance second with: -1.
	self
		should: [ SimulationTimePeriodPolicyDefinition of: negativeTime ]
		raise: SimulationError
		whoseDescriptionIncludes: 'Time period cannot be negative'
		description: 'Test did not fail as expected.' 
		