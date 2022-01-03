test - new model
testOriginPositionIsRenderedAtPointZeroZeroWhenScaleIsTwentyOverMeter

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderPositionWith: self twentyOverMeter.
	particle position: testResource nullPosition.
	
	renderer drawIn: view basedOn: particle.

	self assertElementIn: 0 @ 0 hasModel: particle