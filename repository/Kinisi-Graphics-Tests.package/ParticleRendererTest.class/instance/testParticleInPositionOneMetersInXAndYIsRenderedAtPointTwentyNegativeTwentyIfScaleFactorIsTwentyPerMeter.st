tests
testParticleInPositionOneMetersInXAndYIsRenderedAtPointTwentyNegativeTwentyIfScaleFactorIsTwentyPerMeter

	| renderer |
	particle position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer 	basedOn: particle usign: self twentyOverMeter.

	renderer drawIn: view basedOn: particle.

	self assertElementIn: 20 @ 20 negated hasModel: particle