initialization
initializedBasedOn: universeDraft and: configuration

	renderersMapping := Dictionary new.
	universeDraft particleDrafts do: [:particleDraft |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particleDraft with: 10 using: configuration scale.
		particleRenderer labelElementWhenRendering.
		renderersMapping at: particleDraft particleName put: particleRenderer ].