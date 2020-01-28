tests
testParticlePositionUpdateFailsIfTargetPositionIsAlreadyOccupiedInUniverseObservationAndCurrentPositionIsPreserved

	| twoParticlesObservations firstParticleObservation secondParticleObservation preUpdateSecondPosition |
	twoParticlesObservations := self universeObservationWithTwoParticles particles.
	firstParticleObservation := twoParticlesObservations first.
	secondParticleObservation := twoParticlesObservations second.
	preUpdateSecondPosition := secondParticleObservation position.

	self
		should: [secondParticleObservation position: firstParticleObservation position]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'.
	self assert: secondParticleObservation position equals: preUpdateSecondPosition