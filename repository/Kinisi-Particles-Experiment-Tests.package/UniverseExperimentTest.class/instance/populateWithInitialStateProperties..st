support
populateWithInitialStateProperties: particle

	| initialParticleState |
	initialParticleState := self initialParticleState.
	particle
		particleName: initialParticleState particleName;
		mass: initialParticleState mass;
		position: initialParticleState position;
		velocity: initialParticleState velocity;
		acceleration: initialParticleState acceleration