tests
testStepDeltaCannotBeZeroNorNegative

	| totalDuration |
	totalDuration := 10 * steppingDelta.
	
	#(-1 0) do: [:invalidStepDuration |
		self
			should: [ workbench steppingWorkbench stepBy: steppingDelta * invalidStepDuration  over: totalDuration ]
			raise: Error
			whoseDescriptionIncludes: 'Step delta must be greater than zero' ]