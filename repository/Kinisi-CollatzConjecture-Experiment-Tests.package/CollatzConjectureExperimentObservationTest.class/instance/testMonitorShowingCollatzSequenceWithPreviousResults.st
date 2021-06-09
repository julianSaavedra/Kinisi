tests
testMonitorShowingCollatzSequenceWithPreviousResults

	| lab workbench observationWorkbench interfaceSpec interfaceDefinition experiment displayManager display |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	lab := KinisiLab using: workbench.
	
	interfaceSpec := CollatzConjectureSequenceMonitorInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench
		period: (Duration milliSeconds: 50);
		add: interfaceDefinition.
	
	experiment := lab newExperiment.
	displayManager := RecorderDisplayManager new.
	display := (displayManager displaysFor: experiment) first.
	
	experiment run.
	self waitUnilIsFinished: display.
	
	self denyEmpty: display shownObservations