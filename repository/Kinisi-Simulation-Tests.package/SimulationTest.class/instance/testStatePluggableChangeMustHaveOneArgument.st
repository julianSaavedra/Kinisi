test - change creation
testStatePluggableChangeMustHaveOneArgument

	{[]. [:state :invalidArgument | ]} do: [:invalidChangeBlock |
		self
			should: [ SimulationStateChange with: invalidChangeBlock ]
			raise: Error
			whoseDescriptionIncludes: 'Pluggable block must have one argument only']