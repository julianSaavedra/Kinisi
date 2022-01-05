tests
testLabProducesExpectedExperimenResult

	| lab |
	lab := KinisiLab using: self workbench.

	self runExperimentUntilHasFinishedIn: lab.
	
	self
		assert: lab lastResult
		containsAll: self expectedExperimentSteps