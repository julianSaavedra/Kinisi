test - change components
testGravitationalFieldICannotBeCausedByParticleNotBelongingToTheUniverse

	| particle anotherParticle |
	particle := workbench newParticle.
	anotherParticle := workbench newParticle.
	particle removeYourselfFromUniverse.
	
	self
		should: [ workbench addGravitationalFieldCausedByAll: {particle. anotherParticle} ]
		raise: ExperimentError
		whoseDescriptionIncludes: 'Particle is not part of this universe'.
	
	self
		should: [ workbench addGravitationalFieldCausedBy: particle ]
		raise: ExperimentError
		whoseDescriptionIncludes: 'Particle is not part of this universe'
	