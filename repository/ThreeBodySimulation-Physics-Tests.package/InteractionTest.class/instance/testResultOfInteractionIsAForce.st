tests
testResultOfInteractionIsAForce

	| physicalStateA physicalStateB interaction |
	physicalStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource oneKilogram
		in: testResource nullPosition.
	physicalStateB := testResource
		physicalStateForParticleNamed: 'ParticleB'
		with: testResource twoKilograms
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1 / 3 sqrt).

	interaction := Interaction overParticleWith: physicalStateA causedByParticleWith: physicalStateB.

	self
		assert: interaction result norm
		equals: (testResource newtonWith: 1.3348e-10)