test
testParticleAtTheOriginIsRenderedAtPointZeroZeroWhenScaleIsTwentyOverMeter

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	particle position: testResource nullPosition.
	renderer renderPositionWith: self twentyOverMeter.

	renderer drawIn: canvas basedOn: particle.

	self assertShapeFor: particle isIn: 0 @ 0