tests
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalParticleA originalParticleB originalParticles originalState universeStateChange gValue expectedParticleA expectedParticleB expectedParticles expectedState expectedStateA expectedStateB unitProvider |
	unitProvider := UnitProvider soleInstance.
	originalParticleA := testResource particleNamed: #ParticleA in: testResource nullPosition with: testResource twoKilograms.
	originalParticleB := testResource particleNamed: #ParticleB in: (MeasureVector x: 1 y: 0 z: 0 with: unitProvider meter) with: testResource oneKilogram.
	originalParticles := OrderedCollection with: originalParticleA with: originalParticleB.
	originalState := ObservableUniverseState with: originalParticles.
	
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	gValue := 6.674e-11.

	expectedStateA := PhysicalState withMass: testResource twoKilograms
		position: (MeasureVector x: gValue / 2 y: 0 z: 0 with: unitProvider meter)
		velocity: (MeasureVector x: gValue y: 0 z: 0 with: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector x: gValue y: 0 z: 0 with: unitProvider standardAccelerationUnit).
		
	expectedParticleA := Particle named: #ParticleA with: expectedStateA.
	
	expectedStateB := PhysicalState withMass: testResource oneKilogram
		position: (MeasureVector x: 1 - gValue y: 0 z: 0 with: unitProvider meter)
		velocity: (MeasureVector x: 2 * gValue negated y: 0 z: 0 with: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector x: 2 * gValue negated y: 0 z: 0 with: unitProvider standardAccelerationUnit).
		
	expectedParticleB := Particle named: #ParticleB with: expectedStateB.
	expectedParticles := OrderedCollection with: expectedParticleA with: expectedParticleB.
	expectedState := ObservableUniverseState with: expectedParticles.
	
	self assert: universeStateChange finalState equals: expectedState 
