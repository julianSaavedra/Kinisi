as yet unclassified
velocity: targetVelocity
 
	| newParticleState |
	newParticleState := PhysicalState
		forParticleNamed: tentativeParticleState particleName
		withMass: tentativeParticleState mass
		position: tentativeParticleState position
		velocity: targetVelocity
		andAcceleration: tentativeParticleState acceleration.
	tentativeParticleState := newParticleState