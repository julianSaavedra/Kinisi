tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab |
	lab := KinisiLab using: self workbench.
	
	lab runExperiment.
	lab runExperiment.
	lab runExperiment.
	
	self assert: lab experimentsResults size equals: 3