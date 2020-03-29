test - new model
testParticleSizeCannotBeMinorThanTheMinimunSizeAdmissible

	self
		should: [ ParticleRenderer basedOn: particle with: 9 ]
		raise: RenderingError
		whoseDescriptionIncludes: 'Size cannot be minor than the minumun size (10)'
		description: 'Test did not failed as expected'