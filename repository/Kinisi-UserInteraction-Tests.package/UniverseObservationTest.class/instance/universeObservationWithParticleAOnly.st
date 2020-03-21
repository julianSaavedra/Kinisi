test objects
universeObservationWithParticleAOnly

	| universe particle |
	universe := UniverseObservation new.
	particle := universe newParticleObservation.
	self populateParticleAObservationsIn: particle.
	^universe