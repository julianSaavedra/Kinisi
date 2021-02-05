tests
testParticleChangesPositionToTheOrigin

	self
		assert: [:newParticle | newParticle position ]
		isChangeTo: testResource nullPosition
		with: [:currentParticle :targetValue | currentParticle position: targetValue ]