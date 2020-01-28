tests
testPositionModificationFailsIfPositionIsAlreadyOccuppiedInUniverseDraft

	| universeDraft aDraft anotherDraft |
	universeDraft := UniverseObservationDraft new.
	aDraft := universeDraft newParticleObservationDraft.
	anotherDraft := universeDraft newParticleObservationDraft.	

	self
		should: [ anotherDraft position: aDraft position ]
		raise: SimulationError