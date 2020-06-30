tests
testAskingForExperimentsReturnsADifferentCollectionEachTime

	| lab |
	lab := KinisiLab using: self workbench.
	
	self deny: lab experiments identicalTo: lab experiments