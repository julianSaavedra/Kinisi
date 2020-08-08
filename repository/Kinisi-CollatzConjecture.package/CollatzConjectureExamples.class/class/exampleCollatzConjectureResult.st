example
exampleCollatzConjectureResult

	| workbench lab |
	workbench := CollatzConjectureScenarioWorkbench default.
	(CollatzConjectureInitialStateModifier with: 5) modify: workbench.
	
	lab := KinisiLab using: workbench.
	lab runExperiment.
	
	lab lastResult inspect