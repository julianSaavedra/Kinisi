tests
testResultOfInteractionIsAForce

	| particleA particleB interaction |

	particleA := testResource
		particleNamed: #ParticleA
		in: testResource nullPosition
		with: testResource oneKilogram.
	particleB := testResource
		particleNamed: #ParticleB
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1 / 3 sqrt)
		with: testResource twoKilograms.

	interaction := Interaction over: particleA causedBy: particleB.

	self
		assert: interaction result norm
		equals: (testResource newtonWith: 1.3348e-10)