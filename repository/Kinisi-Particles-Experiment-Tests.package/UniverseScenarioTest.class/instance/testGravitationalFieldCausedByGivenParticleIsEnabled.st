test - change components
testGravitationalFieldCausedByGivenParticleIsEnabled

	| fieldCausingParticle anotherParticle |
	fieldCausingParticle := workbench newParticle.
	anotherParticle := workbench newParticle.
	
	self
		shouldnt: [ workbench addGravitationalFieldCausedBy: fieldCausingParticle ]
		raise: Error