tests
testParticleDraftIsRenderedWithElementAtPointZeroZeroIfNotPositionFactorIsGiven

	| renderer |
	particleDraft position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer basedOn: particleDraft.

	renderer drawIn: view basedOn: particleDraft.

	self assertElementIn: 0 @ 0 hasModel: particleDraft