not working - Graphics migration
exampleUniverseWithTwoParticlesParticlesSettingsOnly

	| universe |
	universe := UniverseScenarioWorkbench default.
	universe
		newParticle;
		newParticle.
	(UniverseScenarioParticlesSettingsPresenter on: universe) openWithSpec.
	universe inspect