tests
testDisplayShowingCollatzSequenceWithPreviousResults

	| lab workbench observationWorkbench interfaceSpec interfaceDefinition experiment display |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	lab := KinisiLab using: workbench.
	
	interfaceSpec := CollatzConjectureSequenceMonitorInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench
		period: period;
		add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayManager displaysFor: experiment) first.
	
	experiment run