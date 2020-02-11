tests
testOriginPositionIsRenderedAtPointZeroZero

	| renderer |
	particle position: testResource nullPosition.
	renderer := ParticleRenderer 	basedOn: particle with: 10 using: self twentyOverMeter.

	renderer drawIn: view basedOn: particle.

	self assertElementIn: 0 @ 0 hasModel: particle