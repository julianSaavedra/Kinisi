initialization
initializeScenarioWorkbench

	self
		addPageFor: (configuration scenarioPresenterClass on: workbench modelWorkbench)
		named: 'Scenario'
		with: #workspace