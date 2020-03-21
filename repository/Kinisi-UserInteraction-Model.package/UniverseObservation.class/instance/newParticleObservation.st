configuring
newParticleObservation

	| unitProvider newParticleState newObservation | 
	unitProvider := UnitProvider soleInstance.
	newParticleState := ParticleState
		forParticleNamed: self nameForNewParticle
		withMass: (unitProvider kilogram with: 1)
		position: self positionForNewParticle
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
 
	newObservation := ParticleObservation for: newParticleState in: self.
	universeState := universeState add: newObservation.
	
	^newObservation