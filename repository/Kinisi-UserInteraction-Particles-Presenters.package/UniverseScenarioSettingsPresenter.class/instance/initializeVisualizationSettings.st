initialization
initializeVisualizationSettings

	self
		addPageFor: (UniverseScenarioVisualizationSettingsPresenter on: workbench)
		named: 'Visualization'
		with: #haloView
		performing: [ ]