test objects - gravitational
originalParticlesBeforeGravitationalAttraction

	| originalStateA originalStateB |
	originalStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: (unitProvider kilogram with: 2e30)
		in: testResource nullPosition.
	originalStateB := testResource
		physicalStateForParticleNamed: #ParticleB
		with: (unitProvider kilogram with: 1e30)
		in: (testResource meterVectorWith: #(1e6 2e6 3e6)).

	^Array with: originalStateA with: originalStateB