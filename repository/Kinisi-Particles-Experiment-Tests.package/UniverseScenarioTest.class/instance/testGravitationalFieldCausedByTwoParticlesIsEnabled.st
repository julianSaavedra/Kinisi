test - change components
testGravitationalFieldCausedByTwoParticlesIsEnabled

	| particle anotherParticle |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	
	workbench addGravitationalFieldCausedByAll: {particle. anotherParticle}.
	
	self
		assertCollection: workbench scenario gravitySpecification fieldCausingParticles
		hasSameElements: {particle. anotherParticle}