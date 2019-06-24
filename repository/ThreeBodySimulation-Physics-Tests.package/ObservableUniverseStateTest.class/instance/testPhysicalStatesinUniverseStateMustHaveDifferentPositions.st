tests
testPhysicalStatesinUniverseStateMustHaveDifferentPositions

	| physicalStates |
	physicalStates := Array
		with: self physicalStateInTheOriginForParticleA
		with: self physicalStateInTheOriginForParticleB.

	self
		should: [ ObservableUniverseState with: physicalStates ]
		raise: PhysicsModelError
	

	