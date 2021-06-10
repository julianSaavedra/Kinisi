tests
testDisplayShowingCollatzSequenceChart

	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureSequenceChartInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayManager displaysFor: experiment) first.
	
	experiment run