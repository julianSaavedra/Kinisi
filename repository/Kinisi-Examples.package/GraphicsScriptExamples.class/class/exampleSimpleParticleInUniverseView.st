examples - universe visualization - redundant
exampleSimpleParticleInUniverseView

	| view universe |
	universe := UniverseObservation new.
	universe newParticleObservation.
	view := SpRoassalPresenter new.
	view script: [:canvas | (UniverseRenderer basedOn: universe) drawIn: canvas basedOn: universe ].
	view openWithSpec