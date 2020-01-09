initialization
initializeParticlesSettings

	| particlesSettings |
	particlesSettings := self newTab.
	particlesSettings presenter: (UniverseObservationParticlesSettingsPresenter on: universeObservation).
	particlesSettings
		label: 'Particles';
		closeable: false;
		icon: Smalltalk ui icons smallObjects.
	settings addTab: particlesSettings