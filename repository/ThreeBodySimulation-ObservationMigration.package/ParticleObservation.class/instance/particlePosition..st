instance creation
particlePosition: targetPosition

	| targetState |
	targetState := PhysicalState forParticleNamed: particleState particleName
		withMass: particleState mass
		position: targetPosition
		velocity: particleState velocity
		andAcceleration: particleState acceleration.

	^self class over: targetState