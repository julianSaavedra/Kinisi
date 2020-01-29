tests
testParticleInPositionOneMetersInXOnlyIsRenderedAtPointTwentyZeroIfPositionFactorIsTenPerMeter

	| renderer |
	particleDraft position: testResource oneMeterInYVector.
	renderer := ParticleRenderer 	basedOn: particleDraft usign: self twentyOverMeter.

	renderer drawIn: view basedOn: particleDraft.

	self assertElementIn: 0 @ 20 negated hasModel: particleDraft