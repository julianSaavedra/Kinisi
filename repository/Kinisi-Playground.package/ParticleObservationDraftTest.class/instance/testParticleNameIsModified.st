tests
testParticleNameIsModified

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	
	draft particleName: #ParticleA.
	
	self assert: draft particleName equals: #ParticleA