tests
testFirstNewParticleDraftsIsCreatedInTheOrigin

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	
	self assert: universeDraft newParticleObservationDraft position isZero