test objects
universeObservationWithParticleAAndParticleB

	| universeObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self populateParticleBObservationsIn: universeObservation newParticleObservation.
	^ universeObservation