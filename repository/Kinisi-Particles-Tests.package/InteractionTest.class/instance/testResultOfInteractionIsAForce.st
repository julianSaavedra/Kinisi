tests
testResultOfInteractionIsAForce

	| particleA particleB interaction |
	particleA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource oneKilogram
		in: testResource nullPosition.
	particleB := testResource
		physicalStateForParticleNamed: 'ParticleB'
		with: testResource twoKilograms
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1 / 3 sqrt).

	interaction := Interaction overParticleWith: particleA causedByParticleWith: particleB.

	self
		assert: interaction result norm
		equals: (testResource newtonWith: 1.3348603e-10)