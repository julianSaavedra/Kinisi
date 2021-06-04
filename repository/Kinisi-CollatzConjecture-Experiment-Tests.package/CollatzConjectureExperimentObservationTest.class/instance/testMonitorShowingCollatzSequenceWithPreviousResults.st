tests
testMonitorShowingCollatzSequenceWithPreviousResults

	| lab workbench observationWorkbench interfaceSpec interfaceDefinition |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	lab := KinisiLab using: workbench.
	
	interfaceSpec := CollatzConjectureSequenceMonitorInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'CollatzSequenceMonitor' with: interfaceSpec.
	
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench
		period: (Duration milliSeconds: 50);
		add: interfaceDefinition.
	
	self 
		shouldnt: [ lab runExperiment ]
		raise: Error

	