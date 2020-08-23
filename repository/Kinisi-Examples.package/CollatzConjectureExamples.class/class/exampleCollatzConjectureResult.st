example
exampleCollatzConjectureResult

	| workbench lab |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 5.
	
	lab := KinisiLab using: workbench.
	lab runExperiment.
	
	lab lastResult inspect