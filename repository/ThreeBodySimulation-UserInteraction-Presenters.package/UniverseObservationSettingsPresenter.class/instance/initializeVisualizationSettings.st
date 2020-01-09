initialization
initializeVisualizationSettings

	| visualizationSettings |
	visualizationSettings := self newTab.
	visualizationSettings presenter: (UniverseObservationVisualizationSettingsPresenter on: universeObservation).
	visualizationSettings
		label: 'Visualization';
		closeable: false;
		icon: Smalltalk ui icons haloView.
	settings addTab: visualizationSettings