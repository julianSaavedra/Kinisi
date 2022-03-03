applying
applyOn: workbench 

	| resource gravityAcceleration lowerParticle middleParticle higherParticle |
	resource := PhysicsTestResource new.
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	lowerParticle := workbench newParticle.
	lowerParticle
		particleName: 'LowerParticle';
		position: (resource meterVectorWith: {-25. 0. 0.});
		velocity: (resource meterPerSecondVectorWith: {10. 49.1. 0.});
		addConstantAcceleration: gravityAcceleration named: 'Gravity'.
	middleParticle := workbench newParticle.
	middleParticle
		particleName: 'MiddleParticle';
		position: (resource meterVectorWith: {-50. 0. 0.});
		velocity: (resource meterPerSecondVectorWith: {10. 75. 0.});
		addConstantAcceleration: gravityAcceleration named: 'Gravity'.
	higherParticle := workbench newParticle.
	higherParticle
		particleName: 'HigherParticle';
		position: (resource meterVectorWith: {-75. 0. 0.});
		velocity: (resource meterPerSecondVectorWith: {10. 100. 0.});
		addConstantAcceleration: gravityAcceleration named: 'Gravity'