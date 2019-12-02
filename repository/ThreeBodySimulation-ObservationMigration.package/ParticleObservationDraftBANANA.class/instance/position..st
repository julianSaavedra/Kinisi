as yet unclassified
position: targetPosition
 
	| newParticleState |
	newParticleState := PhysicalState
		forParticleNamed: tentativeParticleState particleName
		withMass: tentativeParticleState mass
		position: targetPosition
		velocity: tentativeParticleState velocity
		andAcceleration: tentativeParticleState acceleration.
	
	self assertValidityForTargetUniverseObservationOf: newParticleState.
	tentativeParticleState := newParticleState