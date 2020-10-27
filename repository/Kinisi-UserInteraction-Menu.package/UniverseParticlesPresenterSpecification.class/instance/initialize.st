settings
initialize
	
	| workbench |
	super initialize.
	workbench := LabWorkbench using: UniverseScenarioWorkbench default.
	lab := KinisiLab using: workbench