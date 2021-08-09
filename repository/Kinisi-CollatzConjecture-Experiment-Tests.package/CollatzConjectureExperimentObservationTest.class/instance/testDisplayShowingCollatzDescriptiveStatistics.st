tests
testDisplayShowingCollatzDescriptiveStatistics
	
	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureDescriptiveStatisticsInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'Descriptive Statistics' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	experiment run