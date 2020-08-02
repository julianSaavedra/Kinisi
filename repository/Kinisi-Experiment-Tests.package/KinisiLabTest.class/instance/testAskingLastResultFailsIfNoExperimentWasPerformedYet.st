tests
testAskingLastResultFailsIfNoExperimentWasPerformedYet

	| lab |
	lab := KinisiLab using: self workbench.
	
	self
		should: [ lab lastResult ]
		raise: Error
		whoseDescriptionIncludes: 'No experiment was run yet'