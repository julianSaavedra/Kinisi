initialization
initializeParticlesSettings

	| setting |
	setting := UniverseObservationParticlesSettingsPresenter on: universeObservation.
	self
		addTabFor: setting
		as: 'Particles'
		with: #smallObjects
		performing: [ setting updateSelectedParticleObservation ]