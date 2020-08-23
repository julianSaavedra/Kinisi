example - Collatz
exampleCollatzWorkbench

	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	(LabWorkbenchPresenter on: workbench using: self observationInterfaceSpecsForCollatz) openWithSpec.
	workbench inspect