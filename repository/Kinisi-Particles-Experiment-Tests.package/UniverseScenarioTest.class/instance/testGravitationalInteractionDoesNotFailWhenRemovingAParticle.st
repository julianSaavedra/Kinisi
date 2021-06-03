test - change components
testGravitationalInteractionDoesNotFailWhenRemovingAParticle

	| particle |
	particle := workbench newParticle.
	workbench addGravitationalInteractionBetweenParticles.
	
	self
		shouldnt: [ particle removeYourselfFromUniverse ]
		raise: Error