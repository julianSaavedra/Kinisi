tests
expectedParticles

	| gValue expectedParticleA expectedParticleB expectedStateA expectedStateB |
	gValue := 6.674e-11.
	expectedStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: (MeasureVector x: gValue / 2 y: 0 z: 0 with: unitProvider meter)
		withVelocity: (MeasureVector 	x: gValue y: 0 z: 0 with: unitProvider standardVelocityUnit)
		withAcceleration: (MeasureVector x: gValue y: 0 z: 0 with: unitProvider standardAccelerationUnit).
	expectedParticleA := Particle named: #ParticleA with: expectedStateA.
	expectedStateB := testResource
		physicalStateForParticleNamed: 'ParticleB'
		with: testResource oneKilogram
		in: (MeasureVector x: 1 - gValue y: 0 z: 0 with: unitProvider meter)
		withVelocity: (MeasureVector x: 2 * gValue negated y: 0 z: 0 with: unitProvider standardVelocityUnit)
		withAcceleration: (MeasureVector x: 2 * gValue negated y: 0 z: 0 with: unitProvider standardAccelerationUnit).
	expectedParticleB := Particle named: #ParticleB with: expectedStateB.
	
	^Array with: expectedParticleA with: expectedParticleB.
	