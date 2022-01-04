accessing
creation

	| unitProvider newParticleState newObservation particleCreator | 
	unitProvider := UnitProvider soleInstance.
	newParticleState := ParticleState
		forParticleNamed: self nameForNewParticle
		withMass: (unitProvider kilogram with: 1)
		position: self positionForNewParticle
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).

	^newParticleState