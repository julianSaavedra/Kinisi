not working - Graphics migration
exampleUniverseWithTwoParticlesView

	| universe |
	universe := UniverseScenarioWorkbench default.
	universe
		newParticle;
		newParticle.

	(UniverseScenarioWorkbenchPresenter on: universe) openWithSpec