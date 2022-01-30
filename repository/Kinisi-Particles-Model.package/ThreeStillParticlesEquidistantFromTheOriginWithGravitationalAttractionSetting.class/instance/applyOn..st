applying
applyOn: workbench

	| resource mass particleA coordinateX coordinateY particleB particleC |
	resource := PhysicsTestResource new.
	mass := resource oneKilogram * 1000.
	particleA := workbench newParticle.	
	particleA
		particleName: 'ParticleA';
		mass: mass;
		position: (resource meterVectorWith: #(1 0 0)).
	coordinateX := 3 sqrt / 2.
	coordinateY := -0.5.
	particleB := workbench newParticle.
	particleB
		particleName: 'ParticleB';
		mass: mass;
		position: (resource meterVectorWith: {coordinateX. coordinateY. 0}).
	particleC := workbench newParticle.
	particleC
		particleName: 'ParticleC';
		mass: mass;
		position: (resource meterVectorWith: {coordinateX negated. coordinateY. 0}).
	workbench addGravitationalInteractionBetweenParticles