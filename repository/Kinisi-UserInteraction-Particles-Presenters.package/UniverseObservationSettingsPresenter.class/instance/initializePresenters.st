initialization
initializePresenters

	settings := OrderedCollection new.
	notebook := self newNotebook.
	self initializeParticlesSettings.
	self initializeVisualizationSettings