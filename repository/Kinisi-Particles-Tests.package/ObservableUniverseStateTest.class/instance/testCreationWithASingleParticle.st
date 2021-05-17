tests
testCreationWithASingleParticle

	|  universe particle |
	particle := self particleAInTheOrigin.
	
	universe := ObservableUniverseState with: particle.
	
	self assert: (universe includes: particle)
