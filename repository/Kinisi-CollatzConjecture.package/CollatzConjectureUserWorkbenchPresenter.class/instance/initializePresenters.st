initialization
initializePresenters

	initialState := self instantiate: CollatzConjectureInitialStateConfigurationPresenter on: workbench.
	initialStateDisplay := self instantiate: CollatzConjectureInitialStateDisplayPresenter on: workbench.
	initialStateDisplaySettings := self instantiate: CollatzConjectureScenarioWorkbenchPresenter on: workbench.
	monitoringSettings := self instantiate: CollatzConjectureMonitoringSettingsPresenter on: workbench