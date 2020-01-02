private
newParticleStateWithMass: targetMass

	^PhysicalState
		forParticleNamed: particleState particleName
		withMass: targetMass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: particleState acceleration