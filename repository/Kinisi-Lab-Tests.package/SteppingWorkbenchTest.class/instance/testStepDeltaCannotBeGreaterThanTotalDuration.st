tests
testStepDeltaCannotBeGreaterThanTotalDuration

	| totalDuration |
	totalDuration := 10 * steppingDelta.
	workbench steppingWorkbench stepBy: steppingDelta over: totalDuration.

	self
		should: [ workbench steppingWorkbench stepBy: 2 * totalDuration over: totalDuration ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration must be equal or greater than the step duration'