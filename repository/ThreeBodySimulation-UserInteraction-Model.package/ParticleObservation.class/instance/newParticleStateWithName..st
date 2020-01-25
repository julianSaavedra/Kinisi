private
newParticleStateWithName: targetName

	^ParticleState
		forParticleNamed: targetName
		withMass: particleState mass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: particleState acceleration