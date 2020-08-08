test - stepping definition
testStateBasedEndConditionMustHaveOneArgument

	{[ ]. [:state :noNeededArgument | ]} do: [:invalidCondition |
		self
			should: [ SteppingDefinition untilStateSatifies: [ ] ]
			raise: Error
			whoseDescriptionIncludes: 'End codition based on state must have one argument']