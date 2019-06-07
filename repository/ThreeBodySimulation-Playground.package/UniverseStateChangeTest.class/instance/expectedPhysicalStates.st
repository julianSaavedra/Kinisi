tests
expectedPhysicalStates

	| gValue expectedStateA expectedStateB |
	gValue := 6.674e-11.
	expectedStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: (MeasureVector x: gValue / 2 with: unitProvider meter)
		withVelocity: (MeasureVector 	x: gValue with: unitProvider standardVelocityUnit)
		withAcceleration: (MeasureVector x: gValue with: unitProvider standardAccelerationUnit).
	expectedStateB := testResource
		physicalStateForParticleNamed: 'ParticleB'
		with: testResource oneKilogram
		in: (MeasureVector x: 1 - gValue with: unitProvider meter)
		withVelocity: (MeasureVector x: 2 * gValue negated with: unitProvider standardVelocityUnit)
		withAcceleration: (MeasureVector x: 2 * gValue negated with: unitProvider standardAccelerationUnit).

	^Array with: expectedStateA with: expectedStateB
	