tests
testStateBasedEndConditionMustHaveOneArgument


	{[]. [:state :invalidArgument | ]} do: [:invalidChangeBlock |
		self
			should: [ 	workbench steppingWorkbench repeatUntilStateSatisfies: invalidChangeBlock steppingBy: 1 ]
			raise: Error
			whoseDescriptionIncludes: 'End codition based on state must have one argument' ]