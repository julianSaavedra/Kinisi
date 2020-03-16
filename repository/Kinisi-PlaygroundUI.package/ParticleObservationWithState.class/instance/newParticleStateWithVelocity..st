private
newParticleStateWithVelocity: targetVelocity

	^ParticleState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: targetVelocity
		andAcceleration: particleState acceleration