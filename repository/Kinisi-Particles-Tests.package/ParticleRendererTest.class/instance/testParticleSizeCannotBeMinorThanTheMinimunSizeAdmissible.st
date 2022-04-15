test
testParticleSizeCannotBeMinorThanTheMinimunSizeAdmissible

	self
		assert: [ ParticleRenderer basedOn: particle with: 9 ]
		failsWith: 'Size cannot be minor than the minimun size (10)'