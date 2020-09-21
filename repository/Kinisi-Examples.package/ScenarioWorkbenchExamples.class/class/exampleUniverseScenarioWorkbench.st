examples
exampleUniverseScenarioWorkbench

	| workbench |
	workbench := UniverseScenarioWorkbench default.
	(UniverseScenarioWorkbenchPresenter on: workbench) openWithSpec.
	workbench inspect