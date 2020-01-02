tests
testTenDraftsAreCreatedWithPositionsNotBeingOccupiedInUniverseObservation

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| currentDraft particleObservations positionsAlreadyOcuppied |
		currentDraft := universeObservation newParticleObservationDraft.
		particleObservations := universeObservation particleObservations.
		positionsAlreadyOcuppied := particleObservations collect: [:particleState | particleState position ].
		self deny: (positionsAlreadyOcuppied includes: currentDraft position).
		currentDraft save	
	 ]