applying
applyOn: workbench

	| resource particle |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle
		particleName: 'ParticleA';
		position: (resource meterVectorWith: {-5. 5. 0});
		velocity: resource nullVelocity;
		addConstantAcceleration: (resource meterPerSquareSecondVectorWith: {1. 0. 0}) named: 'ConstantAcceleration'