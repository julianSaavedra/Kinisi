instance creation
forParticleNamed: particleName withMass: massMeasure position: positionVector velocity: velocityVector andAcceleration: accelerationVector

	self assertNameIsNonEmpty: particleName.
	self assertMassInNonNegative: massMeasure.
	^self new
		initializeWithParticleName: particleName asSymbol
		mass: massMeasure
		position: positionVector
		velocity: velocityVector
		andAcceleration: accelerationVector