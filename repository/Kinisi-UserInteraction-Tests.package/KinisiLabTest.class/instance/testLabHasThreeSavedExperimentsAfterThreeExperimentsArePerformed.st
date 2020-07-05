tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab |
	lab := KinisiLab using: self workbench.
	
	self performExperimentAndWaitUntilNewResultIsAvailable: lab.
	self performExperimentAndWaitUntilNewResultIsAvailable: lab.
	self performExperimentAndWaitUntilNewResultIsAvailable: lab.
	
	self assert: lab experiments size equals: 3