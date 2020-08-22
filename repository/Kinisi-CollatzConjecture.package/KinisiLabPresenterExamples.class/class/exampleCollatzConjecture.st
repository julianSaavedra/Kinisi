examples
exampleCollatzConjecture

	| lab workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbenchBANANA default.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.
	lab inspect