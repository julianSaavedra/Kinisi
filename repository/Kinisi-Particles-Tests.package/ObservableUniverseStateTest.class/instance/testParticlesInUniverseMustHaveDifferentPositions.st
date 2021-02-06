tests
testParticlesInUniverseMustHaveDifferentPositions

	| particles |
	particles := Array
		with: self particleAInTheOrigin
		with: self particleBInTheOrigin.

	self
		should: [ ObservableUniverseState withAll: particles ]
		raise: PhysicsModelError
	

	