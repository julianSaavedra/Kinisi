examples
exampleParticleIsAttractedByTheEarth

	| testResource unitProvider second earth particle timeDelta duration simulation |

	unitProvider := UnitProvider soleInstance.
	second := unitProvider second.
	testResource := PhysicsTestResource new.

	earth := ParticleState
		forParticleNamed: 'Earth'
		withMass: (unitProvider kilogram with: 5.9722e24)
		position: (MeasureVector y: -6371 with: unitProvider kilometer)
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.
	particle := ParticleState
		forParticleNamed: 'ExampleParticle'
		withMass: testResource oneKilogram
		position: testResource nullPosition
		velocity: (MeasureVector x: 8.66 y: 5 z: 0 with: unitProvider standardVelocityUnit)
		andAcceleration: testResource nullAcceleration.

	timeDelta := second with: 0.1.
	duration := second with: 1.1.
	
	simulation := Simulation
		startingWith: particle
		changingBy: [:stepDuration :currentState |
			| interaction |
			interaction := Interaction overParticleWith: currentState causedByParticleWith: earth.
			(PhysicalStateChange of: currentState during: stepDuration perceiving: interaction result) finalState ]
		over: timeDelta
		during: duration.

	simulation run.

	^simulation result