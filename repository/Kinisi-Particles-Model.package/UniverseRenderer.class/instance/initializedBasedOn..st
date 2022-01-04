initialization
initializedBasedOn: universe

	| absoluteZoomUnit positionFactor |
	background := universe background.
	renderersMapping := Dictionary new.
	absoluteZoomUnit := universe zoom measureBetween: 10 and: 50.
	positionFactor := absoluteZoomUnit / universe scale.
	universe visibleParticles do: [:particle |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particle with: 10.
		particleRenderer renderLabelWith: [:renderedParticle | renderedParticle particleName].
		particleRenderer renderPositionWith: positionFactor.
		renderersMapping at: particle particleName put: particleRenderer ].
	gridRenderer := (GridRendererFactory basedOn: universe gridMode and: absoluteZoomUnit) renderer