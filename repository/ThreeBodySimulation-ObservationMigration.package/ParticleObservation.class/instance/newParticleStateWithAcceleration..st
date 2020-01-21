private
newParticleStateWithAcceleration: targetAcceleration

	^PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: targetAcceleration