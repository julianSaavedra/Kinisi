tests
testParticleIsRenderedAtPointZeroZeroIfNotPositionFactorIsGiven

	| renderer |
	particle position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer basedOn: particle.

	renderer drawIn: view basedOn: particle.

	self assertElementIn: 0 @ 0 hasModel: particle