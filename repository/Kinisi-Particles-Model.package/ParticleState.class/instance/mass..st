modifying
mass: newMass
 
	^self class
		forParticleNamed: particleName
		withMass: newMass
		position: position
		velocity: velocity
		andAcceleration: acceleration 