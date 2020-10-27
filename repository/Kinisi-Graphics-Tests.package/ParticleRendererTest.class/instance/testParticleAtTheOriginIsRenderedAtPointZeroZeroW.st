test
testParticleAtTheOriginIsRenderedAtPointZeroZeroW

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	particle position: testResource nullPosition.

	renderer drawIn: canvas basedOn: particle.

	self assertShapeFor: particle isIn: 0 @ 0