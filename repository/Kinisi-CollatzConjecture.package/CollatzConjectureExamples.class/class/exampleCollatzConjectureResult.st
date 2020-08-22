example
exampleCollatzConjectureResult

	| workbench lab |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbenchBANANA default.
	workbench modelWorkbench state: 5.
	
	lab := KinisiLab using: workbench.
	lab runExperiment.
	
	lab lastResult inspect