tests
testParticleObservationPositionUpdateFailsIfTargetPositionIsAlreadyOccupiedInUniverseObservation

	| universeObservation draft particleBObservation |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft particleName: 'ParticleA'; position: physicsResource nullPosition; save.

	draft := universeObservation newParticleObservationDraft.
	draft particleName: 'ParticleB'; position: physicsResource oneMeterInAllComponentsVector; save.
	
	particleBObservation := universeObservation particleObservations detect: [:particleObservation | particleObservation particleName = 'ParticleB'].
	self
		should: [particleBObservation position: physicsResource nullPosition]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'.

	self
		assert: particleBObservation position
		equals: physicsResource oneMeterInAllComponentsVector