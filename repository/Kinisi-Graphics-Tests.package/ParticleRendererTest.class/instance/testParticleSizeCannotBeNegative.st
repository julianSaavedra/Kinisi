tests
testParticleSizeCannotBeNegative

	self
		should: [ ParticleRenderer basedOn: particle with: -1]
		raise: RenderingError