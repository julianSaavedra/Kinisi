initialization
initializeWidgets

	initialState := self instantiate: UniverseDraftPresenter on: workbench initialState.
	simulationConfiguration := self instantiate: SimulationConfigurationPresenter on: workbench simulationConfiguration. 
	gridConfiguration := self instantiate: GridConfigurationPresenter on: workbench gridConfiguration.
	start := self newButton.
	start action: [ self startSimulation ].
	start icon: (self iconNamed:#glamorousPlay).
	self focusOrder add: simulationConfiguration; add: simulationConfiguration; add: initialState 