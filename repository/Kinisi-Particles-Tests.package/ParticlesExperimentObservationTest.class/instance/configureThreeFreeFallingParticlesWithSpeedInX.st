tests
configureThreeFreeFallingParticlesWithSpeedInX

	| particleA particleB particleC modelWorkbench testResource acceleration |
	testResource := PhysicsTestResource new.
	modelWorkbench := lab workbench modelWorkbench.
	particleA := modelWorkbench newParticle.
	particleA color: Color red.
	particleA position: testResource oneMeterInXVector * -1.
	particleA velocity: (testResource meterPerSecondVectorWith: #( 1 147.3 0)).
	
	particleB := modelWorkbench newParticle.
	particleB color: Color blue.
	particleB position: testResource nullPosition.
	particleB velocity: (testResource meterPerSecondVectorWith: #( 1 98.2 0)).
	
	particleC := modelWorkbench newParticle.
	particleC color: Color green.
	particleC position: testResource oneMeterInXVector.
	particleC velocity: (testResource meterPerSecondVectorWith: #( 1 49.1 0 )).
	
	acceleration := testResource meterPerSquareSecondVectorWith: #( 0 -9.82 0 ).
	modelWorkbench scenario particles do: [:particle |
		particle addConstantAcceleration: acceleration named: 'Acceleration']