test
testParticleNotInTheOriginIsRenderedAtPointZeroZeroIfNoPositionModifierIsGiven

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.

	self deny: particle position isZero.
	renderer drawIn: canvas basedOn: particle.

	self assertShapeFor: particle isIn: 0 @ 0