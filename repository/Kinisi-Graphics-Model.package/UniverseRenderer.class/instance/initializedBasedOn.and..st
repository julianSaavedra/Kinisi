initialization
initializedBasedOn: universe and: configuration

	| visibleParticles |
	renderersMapping := Dictionary new.
	visibleParticles := universe particles do: [:particle | particle isVisible ].
	visibleParticles do: [:particle |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particle with: 10 using: configuration scale.
		particleRenderer labelElementWhenRendering.
		renderersMapping at: particle particleName put: particleRenderer ].