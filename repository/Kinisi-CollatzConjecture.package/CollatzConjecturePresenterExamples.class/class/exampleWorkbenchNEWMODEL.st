examples
exampleWorkbenchNEWMODEL

	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	(LabWorkbenchPresenter on: workbench) openWithSpec.
	workbench inspect