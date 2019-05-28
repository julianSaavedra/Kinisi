tests
testPhysicalStatesInUniverseStateMustBeOfDifferentParticlesEach

	| physicalStateCollection |
	physicalStateCollection := Array
		with: self physicalStateInTheOriginForParticleA
		with: self physicalStateNotInTheOriginForParticleA.

	self
		should: [ ObservableUniverseState with: physicalStateCollection ]
		raise: PhysicsModelError