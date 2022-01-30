applying
applyOn: workbench

	| resource mass particleA particleB particleC pi triangleSideFactor triangleOrientationAngle particleAAngle particleBAngle particleCAngle |
	resource := PhysicsTestResource new.
	mass := resource oneKilogram * 0.495.
	pi := Float pi.
	triangleSideFactor := 0.002 / 3 sqrt.
	triangleOrientationAngle := pi / 4.
	particleAAngle := triangleOrientationAngle.
	particleA := workbench newParticle.	
	particleA
		particleName: 'ParticleA';
		mass: mass;
		position: (resource meterVectorWith: {particleAAngle cos. particleAAngle sin. 0}) * triangleSideFactor;
		velocity: resource nullVelocity.
	particleBAngle := triangleOrientationAngle + ((2 * pi) / 3).
	particleB := workbench newParticle.
	particleB
		particleName: 'ParticleB';
		mass: mass;
		position: (resource meterVectorWith: {particleBAngle cos. particleBAngle sin. 0}) * triangleSideFactor;
		velocity: resource nullVelocity.
	particleCAngle := triangleOrientationAngle + ((4 * pi) / 3).
	particleC := workbench newParticle.
	particleC
		particleName: 'ParticleC';
		mass: mass;
		position: (resource meterVectorWith: {particleCAngle cos. particleCAngle sin. 0}) * triangleSideFactor;
		velocity: resource nullVelocity.
	workbench addGravitationalInteractionBetweenParticles
	
