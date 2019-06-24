tests
testTwoUniverseStatesAreNotEqualIfAtLeastOnePhysicalStateIsDifferentInBothOfThem

	| atOriginPhysicalStateArray notAtOriginPhysicalStateArray |
	atOriginPhysicalStateArray := Array with: self physicalStateInTheOriginForParticleA.
	notAtOriginPhysicalStateArray := Array with: self physicalStateNotInTheOriginForParticleA.

	self
		deny: (ObservableUniverseState with: atOriginPhysicalStateArray)
		equals: (ObservableUniverseState with: notAtOriginPhysicalStateArray)