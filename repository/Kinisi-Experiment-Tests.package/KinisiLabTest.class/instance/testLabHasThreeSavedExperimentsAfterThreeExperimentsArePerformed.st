tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab |
	lab := KinisiLab using: self workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	self runExperimentUntilHasFinishedIn: lab.
	self runExperimentUntilHasFinishedIn: lab.
	
	self assert: lab experimentsResults size equals: 3