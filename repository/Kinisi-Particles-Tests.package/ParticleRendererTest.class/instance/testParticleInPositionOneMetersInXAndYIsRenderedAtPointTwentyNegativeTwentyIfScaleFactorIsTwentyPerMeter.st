test
testParticleInPositionOneMetersInXAndYIsRenderedAtPointTwentyNegativeTwentyIfScaleFactorIsTwentyPerMeter

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderPositionWith: self twentyOverMeter.
	particle position: testResource oneMeterInAllComponentsVector.

	self assertNoErrorIsRaisedWhenRendering: particle using: renderer.

	self assertShapeFor: particle isIn: 20 @ 20 negated