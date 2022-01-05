tests
testTotalDurationCannotBeZeroNorNegative


	#(-1 0) do: [:invalidStepDuration |
		self
			should: [ workbench steppingWorkbench stepBy: steppingDelta over: invalidStepDuration * steppingDelta ]
			raise: Error
			whoseDescriptionIncludes: 'Total duration must be greater than zero' ]