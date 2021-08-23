instance creation
forUniverseParticlesWith: example

	^self
		title: 'Lab - Particles'
		extent: 1500 @ 830
		with: (UniverseParticlesPresenterSpecification basedOn: example)