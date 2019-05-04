tests
testResultOfInteractionIsAForce

	| particleA particleB interaction |

	particleA := self
		particleNamed: #ParticleA
		in: testResource nullPosition
		with: testResource oneKilogram.
	particleB := self
		particleNamed: #ParticleB
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1 / 3 sqrt)
		with: testResource twoKilograms.

	interaction := Interaction over: particleA causedBy: particleB.

	self
		assert: interaction result norm
		equals: (unitProvider newton with: 1.3348e-10)