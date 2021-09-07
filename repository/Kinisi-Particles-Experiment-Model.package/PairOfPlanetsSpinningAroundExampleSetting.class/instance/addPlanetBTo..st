private
addPlanetBTo: workbench

	| planetB |
	planetB := workbench newParticle.
	planetB
		particleName: 'PlanetB';
		position: self planetPosition;
		mass: self planetMass;
		velocity: self planetVelocity;
		acceleration: resource nullAcceleration;
		color: Color yellow