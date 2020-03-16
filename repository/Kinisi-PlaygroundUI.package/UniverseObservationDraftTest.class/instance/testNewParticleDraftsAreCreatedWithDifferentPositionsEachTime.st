tests
testNewParticleDraftsAreCreatedWithDifferentPositionsEachTime

	| universeDraft  newParticleDraft previousParticleDraft |
	universeDraft := UniverseObservationDraft new.
	newParticleDraft := universeDraft newParticleObservation.
	
	10 timesRepeat: [
		previousParticleDraft := newParticleDraft.
		newParticleDraft := universeDraft newParticleObservation.
		self 
			deny: previousParticleDraft position
			equals: newParticleDraft position]