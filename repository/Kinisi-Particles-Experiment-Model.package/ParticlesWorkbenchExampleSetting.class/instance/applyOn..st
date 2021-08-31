applying
applyOn: workbench
 
	| resource particle |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle
		position: (resource vectorWithXOnlyWithMeters: -50);
		velocity: (resource meterPerSecondVectorWith: {10. 49. 0});
		addConstantAcceleration:  (resource meterPerSquareSecondVectorWith: {0. -9.82. 0}) named: 'Gravity'.
	workbench
		quadrantGridWith: Color gray;
		scale: resource oneMeter * 10