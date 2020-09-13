test - old - to removed
universeObservationWithParticleAOnly

	| universe particle |
	universe := UniverseObservation new.
	particle := universe newParticleObservation.
	self populateParticleAPropertiesIn: particle.
	^universe