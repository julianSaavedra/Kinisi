examples
exampleCollatzConjectureWorkbench

	| workbench |
	workbench := CollatzConjectureScenarioWorkbench default.
	(CollatzConjectureScenarioWorkbenchPresenter on: workbench) openWithSpec.
	workbench inspect