tests
testDraftParticleNameUpdateFailsIfNewNameAlreadyExistsInUniverseObservationAndCurrentNameIsPreserved

	| universeObservation draft preUpdateDraftParticleName existingParticleObservation |
	universeObservation := self universeObservationWithOneObservation.
	draft := universeObservation newParticleObservationDraft.
	preUpdateDraftParticleName := draft particleName.
	
	existingParticleObservation := universeObservation particleObservations first.	
	self
		should: [draft particleName: existingParticleObservation particleName]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are named equally'.
	self assert: draft particleName equals: preUpdateDraftParticleName