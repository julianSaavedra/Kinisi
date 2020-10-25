tests
testStepDeltaAndTotalDurationCannotBeFromDifferentDomain

	| oneSecond totalDuration |
	oneSecond := resource oneSecond.
	totalDuration := 10 * oneSecond.
	workbench steppingWorkbench stepBy: oneSecond over: totalDuration.

	self
		should: [ workbench steppingWorkbench stepBy: resource oneSecond over: 10 ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration and step duration must be from the same domain'
		description: 'Test did not fail as expected'