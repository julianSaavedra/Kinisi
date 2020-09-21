initialization
initializeVisualizationSettings

	self
		addPageFor: (UniverseObservationVisualizationSettingsPresenter on: workbench)
		named: 'Visualization'
		with: #haloView
		performing: [ ]