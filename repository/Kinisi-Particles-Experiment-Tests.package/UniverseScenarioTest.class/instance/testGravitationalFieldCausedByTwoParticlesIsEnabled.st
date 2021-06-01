test - change components
testGravitationalFieldCausedByTwoParticlesIsEnabled

	| particle anotherParticle |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	
	self
		shouldnt: [ workbench addGravitationalFieldCausedByAll: {particle. anotherParticle} ]
		raise: Error