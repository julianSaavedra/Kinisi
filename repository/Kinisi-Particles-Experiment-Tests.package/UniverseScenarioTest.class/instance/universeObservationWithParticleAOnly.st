test - old - to removed
universeObservationWithParticleAOnly

	| universe particle |
	universe := UniverseScenario new.
	particle := universe newParticleObservation.
	self populateParticleAPropertiesIn: particle.
	^universe