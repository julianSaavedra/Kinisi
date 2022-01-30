applying
applyOn: workbench
 
	| resource particle |
	resource := PhysicsTestResource new.
	particle := workbench newParticle.
	particle
		particleName: 'ParticleA';
		position: (resource meterVectorWith: {-5. 0. 0});
		velocity: (resource velocityVectorWithXComponentOnlyWithAmount: 1)