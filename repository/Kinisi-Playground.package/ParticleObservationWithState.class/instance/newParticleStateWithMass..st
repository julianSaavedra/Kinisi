private
newParticleStateWithMass: targetMass

	^ParticleState
		forParticleNamed: particleState particleName
		withMass: targetMass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: particleState acceleration