private
addProjectileOn: workbench

	| particle gravity |
	particle := workbench newParticle.
	gravity := resource meterPerSquareSecondVectorWith: { 0. -9.82. 0 }.
	particle
		position: (resource vectorWithXOnlyWithMeters: -50);
		velocity: (resource meterPerSecondVectorWith: { 10. 49. 0 });
		addConstantAcceleration: gravity named: 'Gravity'