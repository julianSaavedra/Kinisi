as yet unclassified
acceleration: targetAcceleration
	
	| targetParticleState targetObservation |
	targetParticleState := PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: targetAcceleration.
	targetObservation := ParticleObservation over: targetParticleState in: universeObservation.
	
	universeObservation update: self basedOn: targetObservation.
	particleState := targetParticleState