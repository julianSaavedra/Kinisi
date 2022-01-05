tests
testParticleObservationDraftRemovalFailsIfUniverseDraftDoesNotContainParticleDraftToBeRemoved

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservation.
	particleDraft := universeDraft newParticleObservation.
	self assert: (universeDraft particles includes: particleDraft).
	universeDraft remove: particleDraft.
	self deny: (universeDraft particles includes: particleDraft).
	
	self
		should: [ universeDraft remove: particleDraft ]
		raise: SimulationError
	