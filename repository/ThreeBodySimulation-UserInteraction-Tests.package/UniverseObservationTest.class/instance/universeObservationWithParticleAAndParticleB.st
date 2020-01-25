test objects
universeObservationWithParticleAAndParticleB

	| universeObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self populateParticleBObservationsInAndSave: universeObservation newParticleObservationDraft.
	^universeObservation