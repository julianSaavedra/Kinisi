examples
exampleParticleIsAttractedByTheEarth

	| testResource unitProvider second earthAsParticleState earthAsParticle originalState initialTime finalTime stepDuration states |

	unitProvider := UnitProvider soleInstance.
	second := unitProvider second.
	testResource := PhysicsTestResource new.

	earthAsParticleState := PhysicalState
		forParticleNamed: (unitProvider kilogram with: 5.9722e24)
		withMass:
			(MeasureVector
				x: 0
				y: -6371
				z: 0
				with: unitProvider kilometer)
		position:
			(MeasureVector
				x: 0
				y: 0
				z: 0
				with: unitProvider standardVelocityUnit)
		velocity: testResource nullAcceleration
		andAcceleration: nil.

	earthAsParticle := Particle named: #Earth with: earthAsParticleState.

	originalState := PhysicalState
		forParticleNamed: testResource oneKilogram
		withMass:
			(MeasureVector
				x: 0
				y: 0
				z: 0
				with: unitProvider standardDistanceUnit)
		position:
			(MeasureVector
				x: 8.66
				y: 5
				z: 0
				with: unitProvider standardVelocityUnit)
		velocity: testResource nullAcceleration
		andAcceleration: nil.

	initialTime := second with: 0.
	finalTime := second with: 1.1.

	states := OrderedCollection with: initialTime -> originalState.

	stepDuration := second with: 0.1.
	(initialTime + stepDuration to: finalTime by: stepDuration)
		inject: originalState
		into: [ :currentState :aTimeMoment | 
			| particle interaction stateChange newState |

			particle := Particle named: #ParticleA with: currentState.
			interaction := Interaction over: particle causedBy: earthAsParticle.
			stateChange := PhysicalStateChange
				of: currentState
				during: stepDuration
				perceiving: interaction result.
			newState := stateChange finalState.
			states add: aTimeMoment -> newState.
			newState ].

	states