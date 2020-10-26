tests
testStepDeltaCannotBeZeroNorNegative

	| oneSecond totalDuration |
	oneSecond := resource oneSecond.
	totalDuration := 10 * oneSecond.
	
	#(-1 0) do: [:invalidStepDuration |
		self
			should: [ workbench steppingWorkbench stepBy: oneSecond * invalidStepDuration  over: totalDuration ]
			raise: Error
			whoseDescriptionIncludes: 'Step delta must be greater than zero' ]