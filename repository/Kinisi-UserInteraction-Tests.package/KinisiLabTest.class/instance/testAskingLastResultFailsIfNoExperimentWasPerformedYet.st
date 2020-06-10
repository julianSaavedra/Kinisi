tests
testAskingLastResultFailsIfNoExperimentWasPerformedYet

	self
		should: [ KinisiLab new lastResult ]
		raise: Error
		whoseDescriptionIncludes: 'No experiment was run yet'