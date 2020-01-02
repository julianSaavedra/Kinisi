private
newParticleStateWithPosition: targetPosition

	^PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: targetPosition
		velocity: particleState velocity
		andAcceleration: particleState acceleration