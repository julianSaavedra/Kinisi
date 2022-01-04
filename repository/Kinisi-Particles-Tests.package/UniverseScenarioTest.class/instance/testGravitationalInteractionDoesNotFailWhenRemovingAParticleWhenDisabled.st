test - change components
testGravitationalInteractionDoesNotFailWhenRemovingAParticleWhenDisabled

	| particle |
	particle := workbench newParticle.
	workbench disableGravitationalInteraction.
	
	self
		shouldnt: [ particle removeYourselfFromUniverse ]
		raise: Error