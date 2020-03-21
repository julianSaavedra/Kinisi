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
 
	newObservation := ParticleObservationNewModel for: newParticleState.
	self add: newObservation.
	
	^newObservation