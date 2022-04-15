test
testParticleNotInTheOriginIsRenderedAtPointZeroZeroIfNoPositionModifierIsGiven

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.

	self deny: particle position isZero.
	self assertNoErrorIsRaisedWhenRendering: particle using: renderer.

	self assertShapeFor: particle isIn: 0 @ 0