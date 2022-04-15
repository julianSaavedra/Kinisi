test
testParticleAtTheOriginIsRenderedAtPointZeroZeroW

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	particle position: testResource nullPosition.

	self assertNoErrorIsRaisedWhenRendering: particle using: renderer.

	self assertShapeFor: particle isIn: 0 @ 0