test objects
universeObservationWithParticleAOnly

	| universeObservation |
	universeObservation := UniverseObservation new.
	self populateParticleAObservationsIn: universeObservation newParticleObservation.
	^ universeObservation