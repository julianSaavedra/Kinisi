settings
initialize
	
	| workbench |
	super initialize.
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	lab := KinisiLab using: workbench