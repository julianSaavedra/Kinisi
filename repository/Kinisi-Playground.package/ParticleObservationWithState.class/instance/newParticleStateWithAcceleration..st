private
newParticleStateWithAcceleration: targetAcceleration

	^ParticleState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: targetAcceleration