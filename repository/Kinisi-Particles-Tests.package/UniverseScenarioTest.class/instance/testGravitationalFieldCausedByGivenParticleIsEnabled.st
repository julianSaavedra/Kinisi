test - change components
testGravitationalFieldCausedByGivenParticleIsEnabled

	| fieldCausingParticle anotherParticle |
	fieldCausingParticle := workbench newParticle.
	anotherParticle := workbench newParticle.
	
	workbench addGravitationalFieldCausedBy: fieldCausingParticle.
	
	self assert: (workbench scenario gravitySpecification isFieldCausedBy: fieldCausingParticle).
	self deny: (workbench scenario gravitySpecification isFieldCausedBy: anotherParticle)