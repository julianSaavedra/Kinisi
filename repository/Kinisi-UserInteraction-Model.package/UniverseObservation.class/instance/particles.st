accessing
particles

	^universeState particles collect: [:particle |
		ParticlesObservation for: particle particleName in: self ]