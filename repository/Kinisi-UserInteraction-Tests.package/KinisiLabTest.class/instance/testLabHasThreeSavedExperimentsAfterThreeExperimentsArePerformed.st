tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab |
	lab := KinisiLab using: self workbench.
	
	self performExperimentAndWaitUntilResultIsAvailable: lab.
	self performExperimentAndWaitUntilResultIsAvailable: lab.
	self performExperimentAndWaitUntilResultIsAvailable: lab.
	
	self assert: lab experiments size equals: 3