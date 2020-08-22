examples
exampleWorkbenchNEWMODEL

	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbenchBANANA default.
	(LabWorkbenchPresenter on: workbench) openWithSpec.
	workbench inspect