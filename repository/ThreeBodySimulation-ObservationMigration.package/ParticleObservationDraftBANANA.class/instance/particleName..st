as yet unclassified
particleName: targetName

	| newParticleState |
	newParticleState := PhysicalState
		forParticleNamed: targetName
		withMass: tentativeParticleState mass
		position: tentativeParticleState position
		velocity: tentativeParticleState velocity
		andAcceleration: tentativeParticleState acceleration.
	self assertValidityForTargetUniverseObservationOf: newParticleState.
	tentativeParticleState := newParticleState