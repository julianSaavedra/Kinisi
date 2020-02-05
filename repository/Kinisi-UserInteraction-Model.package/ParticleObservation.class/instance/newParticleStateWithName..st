private
newParticleStateWithName: targetName

	| currentState |
	currentState := universeObservation stateFor: self.

	^ParticleState
		forParticleNamed: targetName
		withMass: currentState mass
		position: currentState position
		velocity: currentState velocity
		andAcceleration: currentState acceleration