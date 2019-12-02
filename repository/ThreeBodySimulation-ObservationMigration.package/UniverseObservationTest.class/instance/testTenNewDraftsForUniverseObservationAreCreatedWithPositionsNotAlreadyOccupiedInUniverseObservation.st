tests
testTenNewDraftsForUniverseObservationAreCreatedWithPositionsNotAlreadyOccupiedInUniverseObservation

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| currentDraft particleStates positionsAlreadyOcuppied |
		currentDraft := universeObservation newParticleObservationDraft.
		particleStates := universeObservation universeState physicalStates.
		positionsAlreadyOcuppied := particleStates collect: [:particleState | particleState position ].
		self deny: (positionsAlreadyOcuppied includes: currentDraft particleName).
		currentDraft save	
	 ]