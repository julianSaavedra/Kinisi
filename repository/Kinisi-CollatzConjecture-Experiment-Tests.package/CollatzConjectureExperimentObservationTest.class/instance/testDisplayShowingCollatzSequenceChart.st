tests
testDisplayShowingCollatzSequenceChart

	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureSequenceChartInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayConnector displaysFor: experiment) first.
	displayHolder display: display.
	
	experiment run