test - change components
testGravitationalFieldIsNotCausedByRemovedParticle

	| particle anotherParticle |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	
	workbench addGravitationalFieldCausedByAll: {particle. anotherParticle}.
	self assert: (workbench scenario gravitySpecification isFieldCausedBy: particle).
	
	particle removeYourselfFromUniverse.
	
	self deny: (workbench scenario gravitySpecification isFieldCausedBy: particle).
	self assert: (workbench scenario gravitySpecification isFieldCausedBy: anotherParticle)
	