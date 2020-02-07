configuring
newParticleObservation

	| unitProvider newParticleState |
	unitProvider := UnitProvider soleInstance.
	newParticleState := ParticleState
		forParticleNamed: self nameForNewParticle
		withMass: (unitProvider kilogram with: 1)
		position: self positionForNewParticle
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
 
	universeState := self newUniverseStateWith: newParticleState.
	colorMapping at: newParticleState particleName put: Color red.
	
	^ParticlesObservation for: newParticleState particleName in: self