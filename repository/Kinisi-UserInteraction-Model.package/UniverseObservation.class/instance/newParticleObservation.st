configuring
newParticleObservation

	| unitProvider newParticleState |
	unitProvider := UnitProvider soleInstance.
	newParticleState := ParticleState
		forParticleNamed: 'NewParticle' "self nameForNewParticle"
		withMass: (unitProvider kilogram with: 1)
		position: (MeasureVector nullWith: unitProvider standardDistanceUnit) "self positionForNewParticle"
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
 
	universeState := self newUniverseStateWith: newParticleState.
	colorMapping at: newParticleState particleName put: Color red.

	^ParticlesObservationStateLess for: newParticleState particleName in: self