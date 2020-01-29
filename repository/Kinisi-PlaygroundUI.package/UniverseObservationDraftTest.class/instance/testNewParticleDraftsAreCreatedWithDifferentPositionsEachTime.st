tests
testNewParticleDraftsAreCreatedWithDifferentPositionsEachTime

	| universeDraft  newParticleDraft previousParticleDraft |
	universeDraft := UniverseObservationDraft new.
	newParticleDraft := universeDraft newParticleObservationDraft.
	
	10 timesRepeat: [
		previousParticleDraft := newParticleDraft.
		newParticleDraft := universeDraft newParticleObservationDraft.
		self 
			deny: previousParticleDraft position
			equals: newParticleDraft position]