applying
applyOn: workbench

	| resource gravityAcceleration particle |
	resource := PhysicsTestResource new.
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	particle := workbench newParticle.
	particle
		particleName: 'Projectile';
		position: (resource meterVectorWith: {-50. 0. 0.});
		velocity: (resource meterPerSecondVectorWith: {10. 49.1. 0.});
		addConstantAcceleration: gravityAcceleration named: 'Gravity'