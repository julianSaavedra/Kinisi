accessing model
initializeScenarioWorkbench

	| modelWorkbench presenterClass |
	modelWorkbench := workbench modelWorkbench.
	modelWorkbench class = CollatzConjectureScenarioWorkbench ifTrue: [ presenterClass := CollatzConjectureScenarioWorkbenchPresenter].
	modelWorkbench class = UniverseScenarioWorkbench ifTrue: [ presenterClass := UniverseScenarioWorkbenchPresenter].
		scenario := self
		instantiate: presenterClass
		on: modelWorkbench