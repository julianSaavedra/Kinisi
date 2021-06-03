test - change components
testGravitationalInteractionBetweenAllParticlesIsEnabled

	self
		shouldnt: [ workbench addGravitationalInteractionBetweenParticles ]
		raise: Error