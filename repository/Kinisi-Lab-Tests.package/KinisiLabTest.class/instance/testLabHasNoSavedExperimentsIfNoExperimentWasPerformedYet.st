tests
testLabHasNoSavedExperimentsIfNoExperimentWasPerformedYet

	| lab |
	lab := KinisiLab using: self workbench.
	
	self assertEmpty: lab experimentsResults