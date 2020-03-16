tests
testParticleInPositionOneMetersInXOnlyIsRenderedAtPointTwentyZeroIfPositionFactorIsTenPerMeter

	| renderer |
	particle position: testResource oneMeterInYVector.
	renderer := ParticleRenderer 	basedOn: particle usign: self twentyOverMeter.

	renderer drawIn: view basedOn: particle.

	self assertElementIn: 0 @ 20 negated hasModel: particle