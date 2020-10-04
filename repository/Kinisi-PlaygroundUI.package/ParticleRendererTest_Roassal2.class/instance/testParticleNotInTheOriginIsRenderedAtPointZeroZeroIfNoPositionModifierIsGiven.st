test - new model
testParticleNotInTheOriginIsRenderedAtPointZeroZeroIfNoPositionModifierIsGiven

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self deny: particle position isZero.
	renderer drawIn: view basedOn: particle.
	
	self assertElementIn: 0 @ 0 hasModel: particle