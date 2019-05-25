tests
testParticleWithGivenName

	self
		assert: (testResource particleNamed: #ParticleA) name
		equals: #ParticleA