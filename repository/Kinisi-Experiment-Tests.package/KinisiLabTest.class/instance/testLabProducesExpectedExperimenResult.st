tests
testLabProducesExpectedExperimenResult

	| lab |

	lab := KinisiLab using: self workbench.

	lab runExperiment.
	
	self
		assert: lab lastResult
		containsAll: self expectedExperimentSteps