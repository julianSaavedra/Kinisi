instance creation
draftFor: targetUniverseObservation
 
	| unitProvider draftParticleState |
	unitProvider := UnitProvider soleInstance.
	draftParticleState := PhysicalState
		forParticleNamed: (self nameForDraftTargeting: targetUniverseObservation)
		withMass: (unitProvider kilogram with: 1)
		position: (self positionForDraftTargeting: targetUniverseObservation)
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
 
	^self new
		initializeOver: draftParticleState
		with: Color red
		in: targetUniverseObservation
		as: ParticleObservationMode draft