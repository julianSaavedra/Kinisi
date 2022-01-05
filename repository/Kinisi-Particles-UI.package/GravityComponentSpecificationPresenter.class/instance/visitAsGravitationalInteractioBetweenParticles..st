private
visitAsGravitationalInteractioBetweenParticles: aGravitationalInteractionBetweenParticlesSpecification

	currentHelper := helpersMap at: InteractionBetweenAllParticlesModeHelper modeName.
	mode := self newText.
	mode
		text: 'In this mode, all particles will cause gravity interaction with each other.';
		enabled: false.