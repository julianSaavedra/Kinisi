as yet unclassified
velocity: targetVelocity
 
	| targetParticleState targetObservation |
	targetParticleState := PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: particleState position
		velocity: targetVelocity
		andAcceleration: particleState acceleration.
	targetObservation := ParticleObservation over: targetParticleState in: universeObservation.
	
	universeObservation update: self basedOn: targetObservation.
	particleState := targetParticleState