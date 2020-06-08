initialization
initializeVisualizationSettings

	self
		addTabFor: (UniverseObservationVisualizationSettingsPresenter on: universeObservation)
		as: 'Visualization'
		with: #haloView
		performing: [ ]