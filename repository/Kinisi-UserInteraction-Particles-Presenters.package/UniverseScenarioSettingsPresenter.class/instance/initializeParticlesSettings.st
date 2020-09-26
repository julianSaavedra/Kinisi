initialization
initializeParticlesSettings

	| setting |
	setting := UniverseScenarioParticlesSettingsPresenter on: workbench.
	self
		addPageFor: setting
		named: 'Particles'
		with: #smallObjects
		performing: [ setting updateSelectedParticleObservation ]