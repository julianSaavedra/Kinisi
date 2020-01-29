tests
testParticleNameIsModified

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	
	draft particleName: #ParticleA.
	
	self assert: draft particleName equals: #ParticleA