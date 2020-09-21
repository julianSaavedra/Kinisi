initialization
initializeParticlesSettings

	| setting |
	setting := UniverseObservationParticlesSettingsPresenter on: workbench.
	self
		addPageFor: setting
		named: 'Particles'
		with: #smallObjects
		performing: [ setting updateSelectedParticleObservation ]