tests
testElementInNullPositionIsRenderedAtPointZeroZero

	| renderer |
	particleDraft position: testResource nullPosition.
	renderer := ParticleRenderer 	basedOn: particleDraft with: 10 using: self twentyOverMeter.

	renderer drawIn: view basedOn: particleDraft.

	self assertElementIn: 0 @ 0 hasModel: particleDraft