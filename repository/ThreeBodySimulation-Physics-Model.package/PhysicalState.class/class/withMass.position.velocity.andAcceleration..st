instance creation
withMass: massMeasure position: positionVector velocity: velocityVector andAcceleration: accelerationVector

	^ self new
		initializeWithMass: massMeasure
		position: positionVector
		velocity: velocityVector
		andAcceleration: accelerationVector