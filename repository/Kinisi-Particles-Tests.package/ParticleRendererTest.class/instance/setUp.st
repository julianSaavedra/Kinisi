running
setUp

	super setUp.
	testResource := PhysicsTestResource new.
	canvas ifNil: [ canvas := RSCanvas new ].
	canvas color: Color black.
	particle := UniverseScenarioWorkbench default newParticle.
	particle position: testResource oneMeterInXVector.