tests
originalParticles

	| originalParticleA originalParticleB |
	originalParticleA := testResource
		particleNamed: #ParticleA
		in: testResource nullPosition
		with: testResource twoKilograms.
	originalParticleB := testResource
		particleNamed: #ParticleB
		in: (MeasureVector x: 1 y: 0 	z: 0 with: unitProvider meter)
		with: testResource oneKilogram.

	^Array with: originalParticleA with: originalParticleB