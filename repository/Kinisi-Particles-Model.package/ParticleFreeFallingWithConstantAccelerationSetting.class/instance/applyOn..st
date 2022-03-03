applying
applyOn: workbench
 
	| resource particle gravityAcceleration |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle position: (resource meterVectorWith: {0. 491. 0.}).
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	particle addConstantAcceleration: gravityAcceleration named: 'Gravity'.