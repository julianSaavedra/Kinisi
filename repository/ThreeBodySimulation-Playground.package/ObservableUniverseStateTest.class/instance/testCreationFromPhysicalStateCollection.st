tests
testCreationFromPhysicalStateCollection

	| physicalStateA physicalStateB particleCollection observableUniverseState |
	physicalStateA := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	physicalStateB := testResource physicalStateForParticleNamed: 'ParticleB' in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: physicalStateA with: physicalStateB.

	observableUniverseState := ObservableUniverseState with: particleCollection.

	self assert: observableUniverseState physicalStates size equals: 2

	

	