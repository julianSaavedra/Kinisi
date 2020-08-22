examples
exampleScenarioWorkbench

	| workbench |
	workbench := CollatzConjectureScenarioWorkbenchBANANA default.
	(CollatzConjectureScenarioWorkbenchPresenter on: workbench) openWithSpec.
	workbench inspect