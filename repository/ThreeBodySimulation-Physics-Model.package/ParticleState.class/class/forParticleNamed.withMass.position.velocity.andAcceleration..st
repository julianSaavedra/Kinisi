instance creation
forParticleNamed: particleName withMass: massMeasure position: positionVector velocity: velocityVector andAcceleration: accelerationVector

	self assertValidName: particleName.
	self assertValidMass: massMeasure.
	^self new
		initializeForParticleNamed: particleName asSymbol
		mass: massMeasure
		position: positionVector
		velocity: velocityVector
		andAcceleration: accelerationVector