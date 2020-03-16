tests
testParticleChangesNameToParticleB

	self
		assert: [:newParticle | newParticle particleName ]
		isChangeTo: 'ParticleB'
		with: [:currentParticle :targetValue | currentParticle name: targetValue ]