tests
testNumberOfRepetitionsCannotBeNegative

	self
		should: [ workbench steppingWorkbench repeat: -10 steppingBy: steppingDelta ]
		raise: Error
		whoseDescriptionIncludes: 'Repetitions cannot be negative'