initialization
initializeParticlesSettings

	| particlesSettings particlesSettingsTab |
	particlesSettings := UniverseObservationParticlesSettingsPresenter on: universeObservation.
	settings add: particlesSettings.
	particlesSettingsTab := self newTab.
	particlesSettingsTab presenter: particlesSettings. 
	particlesSettingsTab
		label: 'Particles';
		closeable: false;
		icon: Smalltalk ui icons smallObjects;
		whenTabSelected: [ particlesSettings updateSelectedParticleObservation ].
	settingTabs addTab: particlesSettingsTab