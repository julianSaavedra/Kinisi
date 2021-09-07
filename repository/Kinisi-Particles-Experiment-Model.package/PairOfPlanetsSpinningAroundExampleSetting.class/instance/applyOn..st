applying
applyOn: workbench

	self addPlanetATo: workbench.
	self addPlanetBTo: workbench.
	workbench addGravitationalInteractionBetweenParticles.
	self applyVisualizationSettingsOn: workbench