accessing
particles

	^universeState particles collect: [:particle |
		ParticleObservation for: particle particleName in: self ]