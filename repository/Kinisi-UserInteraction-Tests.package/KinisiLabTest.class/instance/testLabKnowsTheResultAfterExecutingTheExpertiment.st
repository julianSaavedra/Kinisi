tests
testLabKnowsTheResultAfterExecutingTheExpertiment

	| lab workbench |
	workbench := self workbenchWith: self experimentDefinition.
	lab := KinisiLab using: workbench.
	
	lab performExperiment.
	
	self assertLastResultIsAsExpectedFor: lab