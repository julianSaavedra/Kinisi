accessing model
initializePresenters

	scenario := self instantiate: CollatzConjectureScenarioWorkbenchPresenter on: workbench modelWorkbench. 
	observation := self instantiate: ObservationWorkbenchPresenter on: workbench observationWorkbench.
	observation definitionOptions: InterfaceDefinitionSource new observationInterfaceSpecsForCollatz