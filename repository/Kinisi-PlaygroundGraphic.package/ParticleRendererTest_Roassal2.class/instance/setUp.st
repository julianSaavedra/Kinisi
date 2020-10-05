running
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	view := RSCanvas new.	
	particle := UniverseScenario new newParticleObservation.
	particle position: testResource oneMeterInXVector.