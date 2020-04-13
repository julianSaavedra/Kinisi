initialization
initializePresenters

	initialState := self instantiate: CollatzConjectureInitialStateConfigurationPresenter on: workbench.
	initialStateDisplay := self instantiate: CollatzConjectureInitialStateDisplayPresenter on: workbench.
	initialStateDisplaySettings := self instantiate: CollatzConjectureInitialStateDisplayConfigurationPresenter on: workbench