initialization
initializedBasedOn: universe and: configuration

	renderersMapping := Dictionary new.
	universe particles do: [:particle |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particle with: 10 using: configuration scale.
		particleRenderer labelElementWhenRendering.
		renderersMapping at: particle particleName put: particleRenderer ].