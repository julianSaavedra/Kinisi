tests
testParticleChangesVelocityToNullVelocity

	self
		assert: [:newParticle | newParticle velocity ]
		isChangeTo: testResource nullVelocity
		with: [:currentParticle :targetValue | currentParticle velocity: targetValue ]