initialization
initializeWidgets

	settings := OrderedCollection new.
	settingTabs := self newTabManager.
	self initializeParticlesSettings.
	self initializeVisualizationSettings