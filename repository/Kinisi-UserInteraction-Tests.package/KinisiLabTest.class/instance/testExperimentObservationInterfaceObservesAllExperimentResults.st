tests
testExperimentObservationInterfaceObservesAllExperimentResults

	| lab workbench experimentDefinition interface |
	interface := self interface.
	experimentDefinition := self experimentObservedUsing: interface.
	workbench := self workbenchWith: experimentDefinition.
	lab := KinisiLab using: workbench.
	
	self
		performExperimentIn: lab
		andWaitUntilObservationIsFinishedIn: interface.

	self assertExperimentsResultsWereObservedBy: interface