instance creation
draftFor: targetUniverseObservation
 
	| unitProvider existingParticleNames nameGenerator newParticleName existingPositions positionGenerator newPosition draftParticleState |	
	existingParticleNames := targetUniverseObservation universeState physicalStates collect: [:existingParticleState | existingParticleState particleName ].
	nameGenerator := SequentialNameGenerator with: 'Particle'.
	newParticleName := nameGenerator next.
	[ existingParticleNames includes: newParticleName ] whileTrue: [newParticleName := nameGenerator next].
	existingPositions := targetUniverseObservation universeState physicalStates collect: [:existingParticleState | existingParticleState position ].
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator with: UnitProvider soleInstance meter.
	newPosition := positionGenerator next.
	[ existingPositions includes: newPosition ] whileTrue: [newPosition := positionGenerator next].

	
	unitProvider := UnitProvider soleInstance.
	draftParticleState := PhysicalState
		forParticleNamed: newParticleName
		withMass: (unitProvider kilogram with: 0)
		position: newPosition
		velocity: (MeasureVector nullWith: unitProvider standardVelocityUnit)
		andAcceleration: (MeasureVector nullWith: unitProvider standardAccelerationUnit).
 
	^self new
		initializeOver: draftParticleState
		with: Color red
		in: targetUniverseObservation
		as: ParticleObservationMode draft