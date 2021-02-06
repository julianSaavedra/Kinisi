tests
testParticlesIsRemovedCreatingANewUniverse

	| universe particle |
	particle := self particleAInTheOrigin.
	universe := ObservableUniverseState with: particle. 
	
	universe := universe remove: particle.

	self assert: universe particles isEmpty