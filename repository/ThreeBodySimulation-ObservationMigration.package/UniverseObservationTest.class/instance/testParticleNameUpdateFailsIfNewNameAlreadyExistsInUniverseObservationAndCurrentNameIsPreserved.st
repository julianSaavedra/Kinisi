tests
testParticleNameUpdateFailsIfNewNameAlreadyExistsInUniverseObservationAndCurrentNameIsPreserved

	| twoParticlesObservations firstParticleObservation secondParticleObservation preUpdateSecondParticleName |
	twoParticlesObservations := self universeObservationWithTwoParticles particleObservations.
	firstParticleObservation := twoParticlesObservations first.
	secondParticleObservation := twoParticlesObservations second.
	preUpdateSecondParticleName := secondParticleObservation particleName.
	
	self
		should: [ secondParticleObservation particleName: firstParticleObservation particleName ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'.
	self assert: secondParticleObservation particleName equals: preUpdateSecondParticleName