tests
testStepResultConditionPolicyDefinitionCannotBeCreatedOnConditonWithMoreThanOneArgument

	self
		should: [ StepResultConditionPolicyDefinition on: [:arg1 :arg2 | ] ]
		raise: SimulationError
		whoseDescriptionIncludes: 'Condition can have zero or one argument'