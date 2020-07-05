tests
testLabKnowsTheResultAfterExecutingTheExpertiment

	| lab workbench |
	workbench := self workbenchWith: self experimentDefinition.
	lab := KinisiLab using: workbench.
	
	self performExperimentAndWaitUntilNewResultIsAvailable: lab.
	
	self assertLastResultIsAsExpectedFor: lab