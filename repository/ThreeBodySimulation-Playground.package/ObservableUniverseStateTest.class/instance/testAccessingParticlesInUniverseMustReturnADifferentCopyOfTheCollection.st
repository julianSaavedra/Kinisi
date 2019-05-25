tests
testAccessingParticlesInUniverseMustReturnADifferentCopyOfTheCollection

	| particleA particleB particleCollection observableUniverseState |
	particleA := testResource particleAtOriginPositionNamed: #ParticleA.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleA with: particleB.

	observableUniverseState := ObservableUniverseState with: particleCollection.

	self
		assert: observableUniverseState particles
		equals: observableUniverseState particles.

	self deny: observableUniverseState particles == observableUniverseState particles.
	

	