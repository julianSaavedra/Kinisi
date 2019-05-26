tests
testTwoUniverseStatesAreNotEqualIfAtLeastOnePhysicalStateIsDifferentInBothOfThem

	| atOriginPhysicalState notAtOriginPhysicalState |
	atOriginPhysicalState := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	notAtOriginPhysicalState := testResource physicalStateForParticleNamed: 'ParticleA' in: testResource oneMeterInAllComponentsVector.

	self
		deny: (ObservableUniverseState with: (Array with: atOriginPhysicalState))
		equals: (ObservableUniverseState with: (Array with: notAtOriginPhysicalState))