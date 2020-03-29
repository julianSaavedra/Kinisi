running
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	view := RTView new.	
	particle := UniverseObservation new newParticleObservation.
	particle position: testResource oneMeterInXVector.