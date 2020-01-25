accessing
calculatedFinalResult

	| nextPosition nextAcceleration nextVelocity |
	nextAcceleration := netForce / originalState mass.
	nextVelocity := nextAcceleration * deltaTime + originalState velocity.
	nextPosition := (nextVelocity + originalState velocity) * deltaTime / 2 + originalState position.
	
	^ParticleState
		forParticleNamed: originalState particleName
		withMass: originalState mass
		position: nextPosition
		velocity: nextVelocity
		andAcceleration: nextAcceleration