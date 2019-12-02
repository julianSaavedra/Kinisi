initialization
initializeFor: universeObservation

	| unitProvider particleState existingParticleNames nameGenerator newParticleName existingPositions positionGenerator newPosition |
	targetUniverseObservation := universeObservation.
	existingParticleNames := universeObservation universeState physicalStates collect: [:existingParticleState | existingParticleState particleName ].
	nameGenerator := SequentialNameGenerator with: 'Particle'.
	newParticleName := nameGenerator next.
	[ existingParticleNames includes: newParticleName ] whileTrue: [newParticleName := nameGenerator next].
	existingPositions := universeObservation universeState physicalStates collect: [:existingParticleState | existingParticleState position ].
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator with: UnitProvider soleInstance meter.
	newPosition := positionGenerator next.
	[ existingPositions includes: newPosition ] whileTrue: [newPosition := positionGenerator next].


	unitProvider := UnitProvider soleInstance.
	tentativeParticleState := PhysicalState
		forParticleNamed: newParticleName
		withMass: (unitProvider kilogram with: 0)
		position: newPosition
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
	color := Color red