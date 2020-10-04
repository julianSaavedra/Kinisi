settings
initialize
	
	| workbench |
	super initialize.
	workbench := LabWorkbench
		using: UniverseScenarioWorkbench default
		with: ParticlesSteppingWorkbench new.
	lab := KinisiLab using: workbench