as yet unclassified
acceleration: targetAcceleration
 
	| newParticleState |
	newParticleState := PhysicalState
		forParticleNamed: tentativeParticleState particleName
		withMass: tentativeParticleState mass
		position: tentativeParticleState position
		velocity: tentativeParticleState velocity
		andAcceleration: targetAcceleration.
	tentativeParticleState := newParticleState