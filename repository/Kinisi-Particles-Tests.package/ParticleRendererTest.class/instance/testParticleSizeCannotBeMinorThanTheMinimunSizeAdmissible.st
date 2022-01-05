test
testParticleSizeCannotBeMinorThanTheMinimunSizeAdmissible

	self
		should: [ ParticleRenderer basedOn: particle with: 9 ]
		raise: RenderingError
		whoseDescriptionIncludes: 'Size cannot be minor than the minimun size (10)'
		description: 'Test did not failed as expected'