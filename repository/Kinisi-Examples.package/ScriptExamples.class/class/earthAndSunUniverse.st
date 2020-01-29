example - data
earthAndSunUniverse

	| testResource unitProvider earth sun |
	unitProvider := UnitProvider soleInstance.
	testResource := PhysicsTestResource new.

	earth := ParticleState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector y: 150e6 with: unitProvider kilometer)
		velocity: (MeasureVector x: 30000 with: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.
	sun := ParticleState
		forParticleNamed: 'Sun'
		withMass: (unitProvider kilogram with: 2e30)
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.
	
	^ObservableUniverseState withAll: (Array with: earth with: sun)