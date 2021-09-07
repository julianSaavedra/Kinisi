private
addPlanetATo: workbench

	| planetA |
	planetA := workbench newParticle.
	planetA
		particleName: 'PlanetA';
		mass: self planetMass;
		position: self planetPosition opposite;
		velocity: self planetVelocity opposite;
		acceleration: resource nullAcceleration;
		color: Color yellow