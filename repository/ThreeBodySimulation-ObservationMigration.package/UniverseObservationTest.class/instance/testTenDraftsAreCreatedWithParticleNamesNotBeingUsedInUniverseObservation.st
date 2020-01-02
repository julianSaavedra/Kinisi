tests
testTenDraftsAreCreatedWithParticleNamesNotBeingUsedInUniverseObservation

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| currentDraft particleObservations particleNamesAlreadyUsed |
		currentDraft := universeObservation newParticleObservationDraft.
		particleObservations := universeObservation particleObservations.
		particleNamesAlreadyUsed := particleObservations collect: [:particleState | particleState particleName ].
		self deny: (particleNamesAlreadyUsed includes: currentDraft particleName).
		currentDraft save
	 ]