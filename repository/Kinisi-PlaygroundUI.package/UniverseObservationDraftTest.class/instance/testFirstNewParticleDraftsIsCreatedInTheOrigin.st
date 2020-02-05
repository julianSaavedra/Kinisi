tests
testFirstNewParticleDraftsIsCreatedInTheOrigin

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	
	self assert: universeDraft newParticleObservation position isZero