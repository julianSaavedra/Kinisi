tests
testParticleNameModificationFailsIfNameAlreadyExistsInUniverseDraft

	| universeDraft aDraft anotherDraft |
	universeDraft := UniverseObservationDraft new.
	aDraft := universeDraft newParticleObservation.
	aDraft particleName: 'ParticleA'.
	anotherDraft := universeDraft newParticleObservation.	
	self
		should: [ anotherDraft particleName: aDraft particleName ]
		raise: SimulationError