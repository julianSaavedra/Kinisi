example - UI
exampleUniverseWithTwoParticlesView

	| universe |
	universe := UniverseObservation new.
	universe newParticleObservation.
	universe newParticleObservation.
	(UniverseObservationPresenter on: universe) openWithSpec