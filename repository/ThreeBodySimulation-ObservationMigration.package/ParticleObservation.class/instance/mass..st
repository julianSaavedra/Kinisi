as yet unclassified
mass: targetMass
	
	| targetParticleState targetObservation |
	targetParticleState := PhysicalState
		forParticleNamed: particleState particleName
		withMass: targetMass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: particleState acceleration.
	targetObservation := ParticleObservation over: targetParticleState in: universeObservation.
	
	universeObservation update: self basedOn: targetObservation.
	particleState := targetParticleState