settings
initialize
	
	| workbench |
	super initialize.
	workbench := LabWorkbench
		using: CollatzConjectureScenarioWorkbench default
		with: CollatzConjectureSteppingWorkbench new.
	lab := KinisiLab using: workbench