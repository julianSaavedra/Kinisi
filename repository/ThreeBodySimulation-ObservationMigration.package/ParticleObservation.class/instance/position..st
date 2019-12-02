as yet unclassified
position: targetPosition
 
	| targetParticleState targetObservation |
	targetParticleState := PhysicalState
		forParticleNamed: particleState particleName
		withMass: particleState mass
		position: targetPosition
		velocity: particleState velocity
		andAcceleration: particleState acceleration.
	targetObservation := ParticleObservation over: targetParticleState in: universeObservation.
	
	universeObservation update: self basedOn: targetObservation.
	particleState := targetParticleState