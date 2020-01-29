tests
testParticleInPositionOneMetersInXAndYIsRenderedAtPointTwentyNegativeTwentyIfScaleFactorIsTwentyPerMeter

	| renderer |
	particleDraft position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer 	basedOn: particleDraft usign: self twentyOverMeter.

	renderer drawIn: view basedOn: particleDraft.

	self assertElementIn: 20 @ 20 negated hasModel: particleDraft