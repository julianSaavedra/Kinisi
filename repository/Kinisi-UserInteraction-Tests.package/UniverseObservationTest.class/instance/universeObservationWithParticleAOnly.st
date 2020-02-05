test objects
universeObservationWithParticleAOnly

	| universeObservation |
	universeObservation := UniverseObservation new.
	self populateParticleAObservationsInAndSave: universeObservation newParticleObservation.
	^universeObservation