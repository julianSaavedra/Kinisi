tests
testParticlesRemovalFailsIfParticleIsNotIncludedInUniverse

	| universe |
	universe := ObservableUniverseState with: self particleAInTheOrigin. 
	
	self
		should: [ universe remove: self particleANotInTheOrigin ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Particle does not exist in universe (at least, with given state)'
		description: 'Test did not fail as expected'