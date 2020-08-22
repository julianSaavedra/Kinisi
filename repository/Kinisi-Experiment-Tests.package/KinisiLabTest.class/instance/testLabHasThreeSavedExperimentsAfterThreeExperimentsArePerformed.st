tests
testLabHasThreeSavedExperimentsAfterThreeExperimentsArePerformed

	| lab change steppingDefinition domainModelWorkbench workbench |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	lab runExperiment.
	lab runExperiment.
	
	self assert: lab experimentsResults size equals: 3