initialization
initializeVisualizationSettings

	| visualizationSettings visualizationSettingsTab |
	visualizationSettings := UniverseObservationVisualizationSettingsPresenter on: universeObservation.
	settings add: visualizationSettings.
	visualizationSettingsTab := self newTab.
	visualizationSettingsTab presenter: visualizationSettings.
	visualizationSettingsTab
		label: 'Visualization';
		closeable: false;
		icon: Smalltalk ui icons haloView.
	settingTabs addTab: visualizationSettingsTab