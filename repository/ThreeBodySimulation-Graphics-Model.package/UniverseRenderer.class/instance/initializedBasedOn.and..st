initialization
initializedBasedOn: universeDraft and: configuration

	renderersMapping := Dictionary new.
	universeDraft particleObservations do: [:particleObservation |
		| particleRenderer |
		particleRenderer := ParticleRenderer basedOn: particleObservation with: 10 using: configuration scale.
		particleRenderer labelElementWhenRendering.
		renderersMapping at: particleObservation particleName put: particleRenderer ].