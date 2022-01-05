tests
testPositionModificationFailsIfPositionIsAlreadyOccuppiedInUniverseDraft

	| universeDraft aDraft anotherDraft |
	universeDraft := UniverseObservationDraft new.
	aDraft := universeDraft newParticleObservation.
	anotherDraft := universeDraft newParticleObservation.	

	self
		should: [ anotherDraft position: aDraft position ]
		raise: SimulationError