examples
exampleEarthAndSunSimulation

	| testResource unitProvider day earthInitialState sunInitialState initialObservableUniverseState simulation |

	unitProvider := UnitProvider soleInstance.
	day := unitProvider day.
	testResource := PhysicsTestResource new.

	earthInitialState := PhysicalState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector y: 150e6 with: unitProvider kilometer)
		velocity: (MeasureVector y: 30000 with: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.

	sunInitialState := PhysicalState
		forParticleNamed: 'Sun'
		withMass: (unitProvider kilogram with: 2e30)
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	initialObservableUniverseState := ObservableUniverseState with: (Array with: earthInitialState with: sunInitialState).

	simulation := Simulation
		startingWith: initialObservableUniverseState
		changingBy: [:stepDuration :currentState |
			(UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: (day with: 1)
		during: (day with: 365).

	simulation run.

	^simulation result