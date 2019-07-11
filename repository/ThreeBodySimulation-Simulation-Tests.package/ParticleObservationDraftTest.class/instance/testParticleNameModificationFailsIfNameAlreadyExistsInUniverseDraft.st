tests
testParticleNameModificationFailsIfNameAlreadyExistsInUniverseDraft

	| universeDraft aDraft anotherDraft |
	universeDraft := UniverseObservationDraft new.
	aDraft := universeDraft newParticleObservationDraft.
	aDraft particleName: 'ParticleA'.
	anotherDraft := universeDraft newParticleObservationDraft.	
	self
		should: [ anotherDraft particleName: aDraft particleName ]
		raise: SimulationError