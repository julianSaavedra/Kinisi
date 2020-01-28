tests
testParticlesInUniverseMustBeUnique

	| particles |
	particles := Array
		with: self particleAInTheOrigin
		with: self particleANotInTheOrigin.

	self
		should: [ ObservableUniverseState withAll: particles ]
		raise: PhysicsModelError