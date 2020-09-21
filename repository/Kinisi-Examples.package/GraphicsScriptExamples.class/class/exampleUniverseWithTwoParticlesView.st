example - UI
exampleUniverseWithTwoParticlesView

	| universe |
	universe := UniverseObservation new.
	universe newParticleObservation.
	universe newParticleObservation.
	(UniverseScenarioWorkbenchPresenter on: universe) openWithSpec