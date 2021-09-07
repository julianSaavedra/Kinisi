initialization
initializeBasedOn: workbenchSetting
 
	| workbench |
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	workbenchSetting applyOn: workbench.
	lab := KinisiLab using: workbench