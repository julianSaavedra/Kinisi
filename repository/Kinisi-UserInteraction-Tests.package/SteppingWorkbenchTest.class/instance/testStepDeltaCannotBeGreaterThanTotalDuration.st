tests
testStepDeltaCannotBeGreaterThanTotalDuration

	| oneSecond totalDuration |
	oneSecond := resource oneSecond.
	totalDuration := 10 * oneSecond.
	workbench steppingWorkbench stepBy: oneSecond over: totalDuration.

	self
		should: [ workbench steppingWorkbench stepBy: 2 * totalDuration over: totalDuration ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration must be equal or greater than the step duration'
		description: 'Test did not fail as expected'