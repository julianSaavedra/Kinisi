initialization
initializedBasedOn: universe

	| size positionFactor |
	background := universe background.
	renderersMapping := Dictionary new.
	size := universe zoom measureBetween: 10 and: 50.
	positionFactor := size / universe scale.
	universe visibleParticles do: [:particle |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particle with: 10.
		particleRenderer renderLabelWith: [:renderedParticle | renderedParticle particleName].
		particleRenderer renderPositionWith: positionFactor.
		renderersMapping at: particle particleName put: particleRenderer ].
	universe isGridVisible ifTrue: [ gridRenderer := GridRenderer with: universe gridColor and: size ].