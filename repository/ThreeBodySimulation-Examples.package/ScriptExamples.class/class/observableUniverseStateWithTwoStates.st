example - data
observableUniverseStateWithTwoStates

	| testResource unitProvider particleAState particleBState states |

	unitProvider := UnitProvider soleInstance.
	testResource := PhysicsTestResource new.

	particleAState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: testResource twoKilograms
		position: (MeasureVector nullWith: unitProvider meter)
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	particleBState := PhysicalState
		forParticleNamed: 'ParticleB'
		withMass: testResource oneKilogram
		position: testResource oneMeterInAllComponentsVector
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	states := Array with: particleAState with: particleBState.

	^ObservableUniverseState with: states