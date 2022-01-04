test - change components
testGravitationalFieldIsCausedBySingleParticleIfRepeated

	| fieldCausingParticle |
	fieldCausingParticle := workbench newParticle.

	workbench addGravitationalFieldCausedByAll: {fieldCausingParticle. fieldCausingParticle}.
	
	self
		assert: workbench scenario gravitySpecification fieldCausingParticles size
		equals: 1