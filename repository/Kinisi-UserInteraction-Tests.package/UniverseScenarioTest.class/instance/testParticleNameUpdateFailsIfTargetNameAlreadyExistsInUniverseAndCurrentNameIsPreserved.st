test
testParticleNameUpdateFailsIfTargetNameAlreadyExistsInUniverseAndCurrentNameIsPreserved

	| particle anotherParticle preUpdateAnotherParticleName |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	preUpdateAnotherParticleName := anotherParticle particleName.
	
	self deny: particle particleName equals: anotherParticle particleName.
	self
		should: [ anotherParticle particleName: particle particleName ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'.
	self assert: anotherParticle particleName equals: preUpdateAnotherParticleName