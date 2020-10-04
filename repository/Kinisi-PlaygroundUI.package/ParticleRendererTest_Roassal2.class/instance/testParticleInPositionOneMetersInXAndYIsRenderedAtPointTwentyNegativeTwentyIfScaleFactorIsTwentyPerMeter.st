test - new model
testParticleInPositionOneMetersInXAndYIsRenderedAtPointTwentyNegativeTwentyIfScaleFactorIsTwentyPerMeter

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderPositionWith: self twentyOverMeter.
	particle position: testResource oneMeterInAllComponentsVector.

	renderer drawIn: view basedOn: particle.

	self assertElementIn: 20 @ 20 negated hasModel: particle