tests
testTenNewDraftsForUniverseObservationAreCreatedWithParticlesNamesNotIncludedAlreadyInUniverseObservation

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| currentDraft particleStates particleNamesAlreadyUsed |
		currentDraft := universeObservation newParticleObservationDraft.
		particleStates := universeObservation universeState physicalStates.
		particleNamesAlreadyUsed := particleStates collect: [:particleState | particleState particleName ].
		self deny: (particleNamesAlreadyUsed includes: currentDraft particleName).
		currentDraft save
	 ]