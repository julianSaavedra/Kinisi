example - data
earthAndSunInitialObservableUniverseState

	| testResource unitProvider earthInitialState sunInitialState |
	unitProvider := UnitProvider soleInstance.
	testResource := PhysicsTestResource new.

	earthInitialState := PhysicalState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector y: 150e6 with: unitProvider kilometer)
		velocity: (MeasureVector x: 30000 with: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.
	sunInitialState := PhysicalState
		forParticleNamed: 'Sun'
		withMass: (unitProvider kilogram with: 2e30)
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.
	
	^ObservableUniverseState with: (Array with: earthInitialState with: sunInitialState)