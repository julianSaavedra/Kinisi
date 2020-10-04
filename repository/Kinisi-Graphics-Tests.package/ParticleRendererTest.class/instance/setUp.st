running
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	canvas := RSCanvas new.	
	particle := UniverseScenario new newParticleObservation.
	particle position: testResource oneMeterInXVector.