example - Collatz
exampleCollatzWorkbench

	| workbench |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbenchBANANA default.
	(LabWorkbenchPresenter on: workbench using: self observationInterfaceSpecsForCollatz) openWithSpec.
	workbench inspect