applying
applyOn: workbench 

	| resource gravityAcceleration lowerParticle middleParticle higherParticle |
	resource := PhysicsTestResource new.
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	lowerParticle := workbench newParticle.
	lowerParticle
		particleName: 'LowerParticle';
		position: (resource meterVectorWith: {-50. 0. 0.});
		velocity: (resource meterPerSecondVectorWith: {1. 49.1. 0.});
		addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'.
	middleParticle := workbench newParticle.
	middleParticle
		particleName: 'MiddleParticleA';
		position: (resource meterVectorWith: {-50. 1. 0.});
		velocity: (resource meterPerSecondVectorWith: {1. 75. 0.});
		addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'.
	higherParticle := workbench newParticle.
	higherParticle
		particleName: 'HigherParticleA';
		position: (resource meterVectorWith: {-50. 2. 0.});
		velocity: (resource meterPerSecondVectorWith: {1. 100. 0.});
		addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'