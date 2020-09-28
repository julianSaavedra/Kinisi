accessing model
initializeScenarioWorkbench

	scenario := self
		instantiate: configuration scenarioPresenterClass
		on: workbench modelWorkbench