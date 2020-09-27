accessing model
initializeObservationWorkbench

	| modelWorkbench interfaceOptions |
	observation := self
		instantiate: ObservationWorkbenchPresenter
		on: workbench observationWorkbench.
	modelWorkbench := workbench modelWorkbench.
	modelWorkbench class = CollatzConjectureScenarioWorkbench ifTrue: [ interfaceOptions := InterfaceDefinitionSource new observationInterfaceSpecsForCollatz].
	modelWorkbench class = UniverseScenarioWorkbench ifTrue: [ interfaceOptions := InterfaceDefinitionSource new observationInterfaceSpecsForParticles].
	observation definitionOptions: interfaceOptions