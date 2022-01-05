running
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	canvas := RSCanvas new.	
	particle := UniverseScenarioWorkbench default newParticle.
	particle position: testResource oneMeterInXVector.