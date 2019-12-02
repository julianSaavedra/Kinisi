tests
testDraftParticleNameUpdateFailsIfTargetNameAlreadyExistsInUniverseObservation

	| universeObservation draft preUpdateDraftParticleName particleState |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft. 
	draft particleName: 'ParticleA'; save.

	draft := universeObservation newParticleObservationDraft.
	preUpdateDraftParticleName := draft particleName.
	
	particleState := universeObservation universeState physicalStates first.
	self assert: particleState particleName equals: 'ParticleA'.
	
	self
		should: [draft particleName: 'ParticleA']
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'.

	self assert: draft particleName equals: preUpdateDraftParticleName