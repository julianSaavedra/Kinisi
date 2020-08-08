tests
testLabKnowsTheResultAfterExecutingTheExpertiment

	| lab workbench |
	workbench := self workbenchWith: self experimentDefinition.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	self assertLastResultIsAsExpectedFor: lab