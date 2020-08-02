tests
testAskingForExperimentsReturnsADifferentCollectionEachTime

	| lab |
	lab := KinisiLab using: self workbench.
	
	self deny: lab experimentsResults identicalTo: lab experimentsResults