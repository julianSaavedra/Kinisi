applying
applyOn: workbench
 
	| resource particle |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle
		particleName: 'ParticleA';
		position: (resource meterVectorWith: {-5. -5. 0});
		velocity: (resource meterPerSecondVectorWith: {1. 1. 0})