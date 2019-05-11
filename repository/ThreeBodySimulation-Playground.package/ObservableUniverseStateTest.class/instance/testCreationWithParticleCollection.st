tests
testCreationWithParticleCollection

	| particleA particleB particleCollection observableUniverseState |
	particleA := testResource particleNamed: #ParticleA in: testResource nullPosition.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleA with: particleB.

	observableUniverseState := ObservableUniverseState with: particleCollection.

	self assert: observableUniverseState particles size equals: 2

	

	