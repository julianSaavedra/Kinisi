examples
exampleEarthAndSunSimulation

	| testResource unitProvider second earthInitialState sunInitialState initialObservableUniverseState initialTime finalTime stepDuration states |

	unitProvider := UnitProvider soleInstance.
	second := unitProvider second.
	testResource := PhysicsTestResource new.

	earthInitialState := PhysicalState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector y: 150e6 with: unitProvider kilometer)
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	sunInitialState := PhysicalState
		forParticleNamed: 'Sun'
		withMass: (unitProvider kilogram with: 2e30)
		position: (MeasureVector nullWith: unitProvider standardDistanceUnit)
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	initialTime := second with: 0.
	finalTime := second with: 60.
	initialObservableUniverseState := ObservableUniverseState with: (Array with: earthInitialState with: sunInitialState).

	states := OrderedCollection with: initialTime -> initialObservableUniverseState.
	stepDuration := second with: 1.
	(initialTime + stepDuration to: finalTime by: stepDuration)
		inject: initialObservableUniverseState
		into: [:currentState :aTimeMoment |
			| stateChange newState |
			stateChange := UniverseStateChange from: currentState during: stepDuration. 
			newState := stateChange finalState.
			states add: aTimeMoment -> newState.
			newState ].

	^states