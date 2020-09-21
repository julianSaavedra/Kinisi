test
testParticlePositionUpdateFailsIfTargetPositionIsAlreadyOccupiedInUniverseAndCurrentPositionIsPreserved

	| particle anotherParticle preUpdateAnotherPosition |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	preUpdateAnotherPosition := anotherParticle position.

	self
		should: [anotherParticle position: particle position]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'.
	self assert: anotherParticle position equals: preUpdateAnotherPosition