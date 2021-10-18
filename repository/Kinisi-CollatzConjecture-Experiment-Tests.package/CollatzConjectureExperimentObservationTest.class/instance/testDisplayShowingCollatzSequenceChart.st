tests
testDisplayShowingCollatzSequenceChart

	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureSequenceChartInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	self runExperimentUntilHasFinished: experiment.
	
	self assert: experiment hasEnded