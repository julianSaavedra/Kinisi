initialization
initializePresenters

	settings := self
		instantiate: UniverseScenarioSettingsPresenter
		on: workbench.
	view := self
		instantiate: UniverseScenarioDisplayPresenter
		on: workbench.

	self focusOrder
		add: settings;
		add: view