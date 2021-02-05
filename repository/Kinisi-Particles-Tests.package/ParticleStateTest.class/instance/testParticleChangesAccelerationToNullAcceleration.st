tests
testParticleChangesAccelerationToNullAcceleration

	self
		assert: [:newParticle | newParticle acceleration ]
		isChangeTo: testResource nullAcceleration
		with: [:currentParticle :targetValue | currentParticle acceleration: targetValue ]