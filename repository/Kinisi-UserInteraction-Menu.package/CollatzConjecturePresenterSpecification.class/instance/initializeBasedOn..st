initialization
initializeBasedOn: workbenchSetting
 
	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbenchSetting applyOn: workbench.
	lab := KinisiLab using: workbench