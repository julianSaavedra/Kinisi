examples
exampleCollatzConjecture

	| lab workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.
	lab inspect