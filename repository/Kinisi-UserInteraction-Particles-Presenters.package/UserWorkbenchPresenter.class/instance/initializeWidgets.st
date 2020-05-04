initialization
initializeWidgets

	initialState := self instantiate: UniverseObservationPresenter on: workbench initialState.
	simulationConfiguration := self instantiate: SimulationConfigurationPresenter on: workbench simulationConfiguration.
	monitoringFlag := self newRadioButton.
	monitoringFlag canDeselectByClick: true.
	monitoringFlag label: 'Monitors'.
	monitoringFlag whenActivatedDo: [ workbench turnOnMonitoring ].
	monitoringFlag whenDeactivatedDo: [ workbench turnOffMonitoring ].
	start := self newButton.
	start action: [ self startSimulation ].
	start icon: (self iconNamed:#glamorousPlay).
	self focusOrder add: simulationConfiguration; add: simulationConfiguration; add: initialState 