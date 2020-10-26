tests
testNumberOfRepetitionsCannotBeNegative

	self
		should: [ workbench steppingWorkbench repeat: -10 steppingBy: resource oneSecond ]
		raise: Error
		whoseDescriptionIncludes: 'Repetitions cannot be negative'