private
newParticleStateWithVelocity: targetVelocity

	^PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: targetVelocity
		andAcceleration: particleState acceleration