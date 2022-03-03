applying
applyOn: workbench

	| resource particle |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle
		particleName: 'ParticleA';
		position: (resource meterVectorWith: {-25. -30. 0});
		velocity: resource nullVelocity;
		addConstantForce: (resource newtonVectorWith: {1. 1. 0}) named: 'ConstantForce'