tests
testParticleIsNamed
	
	self
		assert: (Particle named: 'Particle A') name
		equals: 'Particle A'