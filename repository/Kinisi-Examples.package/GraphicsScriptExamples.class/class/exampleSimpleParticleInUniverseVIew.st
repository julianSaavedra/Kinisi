examples - universe visualization
exampleSimpleParticleInUniverseVIew

	| view universe |
	universe := UniverseObservation new.
	universe newParticleObservation.
	view := RTView new.
	view openInWindowSized: 1200 @ 1000 titled: 'Animation'.
	(UniverseRenderer basedOn: universe) drawIn: view basedOn: universe