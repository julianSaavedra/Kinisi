initialization
initializeWidgets

	| particlesTab visualizationTab |
	tabManager := self newTabManager.
	particlesTab := self newTab.
	particlesTab presenter: (UniverseDraftControlPanelPresenter on: universeDraft).
	particlesTab
		label: 'Particles';
		closeable: false;
		icon: Smalltalk ui icons smallObjects.
	tabManager addTab: particlesTab.
	
	visualizationTab := self newTab.
	visualizationTab presenter: (UniverseDraftVisualizationControlPanelPresenter on: universeDraft).
	visualizationTab
		label: 'Visualization';
		closeable: false;
		icon: Smalltalk ui icons haloView.
	tabManager addTab: visualizationTab