instance creation
forParticleNamed: particleName
	
	| unitProvider particleState |
	unitProvider := UnitProvider soleInstance.
	particleState := PhysicalState
		forParticleNamed: particleName
		withMass: (unitProvider kilogram with: 0)
		position: (MeasureVector nullWith: unitProvider meter)
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
		
	^self over: particleState