tests
testCreationFromASingleParticle

	|  universe particle |
	particle := self particleAInTheOrigin.
	
	universe := ObservableUniverseState with: particle.
	
	self assert: (universe particles includes: particle)
