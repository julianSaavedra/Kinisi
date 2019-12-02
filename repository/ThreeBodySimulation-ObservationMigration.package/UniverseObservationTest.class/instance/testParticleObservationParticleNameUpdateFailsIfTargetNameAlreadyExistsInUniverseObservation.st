tests
testParticleObservationParticleNameUpdateFailsIfTargetNameAlreadyExistsInUniverseObservation

	| universeObservation draft particleBObservation |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft particleName: 'ParticleA'; save.

	draft := universeObservation newParticleObservationDraft.
	draft particleName: 'ParticleB'; save.
	
	particleBObservation := universeObservation particleObservations detect: [:particleObservation | particleObservation particleName = 'ParticleB'].
	self
		should: [particleBObservation particleName: 'ParticleA']
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'.

	self assert: particleBObservation particleName equals: 'ParticleB'