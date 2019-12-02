as yet unclassified
mass: targetMass

	| newParticleState |
	newParticleState := PhysicalState
		forParticleNamed: tentativeParticleState particleName
		withMass: targetMass
		position: tentativeParticleState position
		velocity: tentativeParticleState velocity
		andAcceleration: tentativeParticleState acceleration.
	tentativeParticleState := newParticleState