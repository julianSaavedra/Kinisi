examples
exampleParticleIsAttractedByTheEarth

	| testResource unitProvider second earthState originalState initialTime finalTime stepDuration states |

	unitProvider := UnitProvider soleInstance.
	second := unitProvider second.
	testResource := PhysicsTestResource new.

	earthState := PhysicalState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector x: 0 y: -6371 z: 0 with: unitProvider kilometer)
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.

	originalState := PhysicalState
		forParticleNamed: 'ExampleParticle'
		withMass: testResource oneKilogram
		position: (MeasureVector nullWith: unitProvider standardDistanceUnit)
		velocity: (MeasureVector x: 8.66 y: 5 z: 0 with: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.

	initialTime := second with: 0.
	finalTime := second with: 1.1.
	states := OrderedCollection with: initialTime -> originalState.

	stepDuration := second with: 0.1.
	(initialTime + stepDuration to: finalTime by: stepDuration)
		inject: originalState
		into: [:currentState :aTimeMoment | 
			| interaction stateChange newState |
			interaction := Interaction overParticleWith: currentState causedByParticleWith: earthState.
			stateChange := PhysicalStateChange
				of: currentState
				during: stepDuration
				perceiving: interaction result.
			newState := stateChange finalState.
			states add: aTimeMoment -> newState.
			newState ].

	states