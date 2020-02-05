test objects
universeObservationWithParticleAAndParticleB

	| universeObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self populateParticleBObservationsInAndSave: universeObservation newParticleObservation.
	^universeObservation