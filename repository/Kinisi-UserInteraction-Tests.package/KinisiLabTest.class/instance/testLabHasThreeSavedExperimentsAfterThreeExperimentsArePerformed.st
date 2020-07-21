tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab |
	lab := KinisiLab using: self workbench.
	
	lab performExperiment.
	lab performExperiment.
	lab performExperiment.
	
	self assert: lab experiments size equals: 3