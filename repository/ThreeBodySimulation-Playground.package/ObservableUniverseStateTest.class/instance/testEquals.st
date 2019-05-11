tests
testEquals

	| particleA particleB particleCollection |
	particleA := testResource particleNamed: #ParticleA in: testResource nullPosition.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleA with: particleB.

	self
		assert: (ObservableUniverseState with: particleCollection)
		equals: (ObservableUniverseState with: particleCollection)
	

	