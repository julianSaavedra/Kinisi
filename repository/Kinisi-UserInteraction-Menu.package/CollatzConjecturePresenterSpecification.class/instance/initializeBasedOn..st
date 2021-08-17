initialization
initializeBasedOn: example
 
	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	example applyOn: workbench.
	lab := KinisiLab using: workbench