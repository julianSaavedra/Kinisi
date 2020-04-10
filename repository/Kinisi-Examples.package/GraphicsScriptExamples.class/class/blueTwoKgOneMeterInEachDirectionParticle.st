data -  scenarios
blueTwoKgOneMeterInEachDirectionParticle

	| universe particle testResource |
	testResource := PhysicsTestResource new.
	universe := UniverseObservation new.
	particle := universe newParticleObservation.
	particle
		particleName: #ParticleA;
		color: Color blue;
		mass: testResource twoKilograms;
		position: testResource oneMeterInAllComponentsVector;
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 3).
	^particle