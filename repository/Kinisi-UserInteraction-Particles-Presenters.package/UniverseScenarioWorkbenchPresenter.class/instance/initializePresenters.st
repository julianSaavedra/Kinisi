initialization
initializePresenters

	settings := self
		instantiate: UniverseObservationSettingsPresenter
		on: workbench.
	view := self
		instantiate: UniverseScenarioDisplayPresenter
		on: workbench.

	self focusOrder
		add: settings;
		add: view