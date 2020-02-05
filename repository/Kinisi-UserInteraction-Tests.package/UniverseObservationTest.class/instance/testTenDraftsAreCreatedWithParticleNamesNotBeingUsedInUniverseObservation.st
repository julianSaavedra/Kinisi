tests
testTenDraftsAreCreatedWithParticleNamesNotBeingUsedInUniverseObservation

	| universeObservation |
	universeObservation := UniverseObservation new.
	10 timesRepeat: [
		| currentDraft particleObservations particleNamesAlreadyUsed |
		currentDraft := universeObservation newParticleObservation.
		particleObservations := universeObservation particles.
		particleNamesAlreadyUsed := particleObservations collect: [:particleState | particleState particleName ].
		self deny: (particleNamesAlreadyUsed includes: currentDraft particleName).
		currentDraft save
	 ]