tests
testAskingForExperimentResultFailsIfExperimentHasNotBeenRun

	| lab experiment |
	lab := KinisiLab using: self workbench.

	experiment := lab newExperiment.
	
	self
		should: [ experiment result ]
		raise: Error
		whoseDescriptionIncludes: 'Result is not available yet'