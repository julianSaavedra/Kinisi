test - stepping definition
testStepDurationCannotBeZeroNorNegative

	#(-1 0) do: [:invalidStepDuration |
		self
			should: [ SteppingDefinition to: 10 by: invalidStepDuration ]
			raise: Error
			whoseDescriptionIncludes: 'Step duration must be greater than zero' ]